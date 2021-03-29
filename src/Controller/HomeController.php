<?php

namespace App\Controller;

use App\Classe\Mail;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index()
    {
        //$mail = new Mail();
       // $mail->send('rachidahaddouch@live.be', 'Rachida Haddouch', 'Developement de Api', 'Hello Rachida , is this test work?');
        return $this->render('home/index.html.twig');
    }
}
