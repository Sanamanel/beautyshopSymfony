<?php

namespace App\Controller;

use App\Classe\Mail;
use App\Entity\User;
use App\Form\RegisterType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class RegisterController extends AbstractController
{

    private $entityManager;
    public function __construct(EntityManagerInterface $entityManager ){
        $this->entityManager = $entityManager;
    }

    /**
     * @Route("/register", name="register")
     */
    public function index(Request $request, UserPasswordEncoderInterface $encoder)
    {
        $notification = null;
        $user = new User();
        $form  = $this->createForm(RegisterType::class, $user);//creation du form
        $form-> handleRequest($request);
        if ($form ->isSubmitted() && $form->isValid()){
            $user = $form->getData();

            //verifier si le user existe dejà
            $search_email = $this->entityManager->getRepository(User::class)->findOneByEmail($user->getEmail());
            if (!$search_email) {
                $password = $encoder->encodePassword($user,$user->getPassword());
                $user->setPassword($password);

                $this->entityManager->persist($user);//fige la data car j'aurais besoin de l'enregistrer method qui permet de figer et de préparer la donner pour sa creation
                $this->entityManager->flush();//tu execute donc tu enregistre la data en bdd
                //ici l'utilisateur est enregistré
                $mail = new Mail();
                $content = "Hello".$user->getFirstname()." <br/> Everything is right welcome with us";
                $mail->send($user->getEmail(), $user->getFirstname(), 'Bienvenue sur Beauty demo', $content);

                $notification = "Your subscription has been successful.You can now login in your account";
            } else {
                $notification = "This email address is already registered. ";
            }

        }
        return $this->render('register/index.html.twig', [
            'form'=> $form->createView(),//create vue
            'notification' => $notification // on passe a twig la notification
    ]);
    }
}
