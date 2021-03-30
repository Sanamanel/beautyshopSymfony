<?php

namespace App\Controller;

use App\Classe\Mail;
use App\Form\ContactType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ContactController extends AbstractController
{
    /**
     * @Route("/contact", name="contact")
     */
    public function index(Request $request): Response
    {
        $form = $this->createForm(ContactType::class);
        $form->handleRequest($request);
            if($form->isSubmitted() && $form->isValid()){
                $this->addFlash('notice', 'Thank you for getting in touch! One of our colleagues will get back in touch with you soon!');

                $mail = new Mail();
                $mail->send('info@bout-de-creation.com','Beauty Shop demo','form');
            }

        return $this->render('contact/index.html.twig',[
            'form' => $form->createView()
        ]);
    }
}
