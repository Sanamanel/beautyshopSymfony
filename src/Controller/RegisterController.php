<?php

namespace App\Controller;

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
        $user = new User();
        $form  = $this->createForm(RegisterType::class, $user);//creation du form
        $form-> handleRequest($request);
        if ($form ->isSubmitted() && $form->isValid()){
            $user = $form->getData();


            $password = $encoder->encodePassword($user,$user->getPassword());
            $user->setPassword($password);

            $this->entityManager->persist($user);//fige la data car j'aurais besoin de l'enregistrer
            $this->entityManager->flush();//tu execute donc tu enregistre la data en bdd

        }
        return $this->render('register/index.html.twig', [
            'form'=> $form->createView()//create vue
    ]);
    }
}
