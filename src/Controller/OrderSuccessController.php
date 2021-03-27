<?php

namespace App\Controller;

use App\Classe\Cart;
use App\Entity\Order;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class OrderSuccessController extends AbstractController
{
    private $entityManager;
    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }
    /**
     * @Route("/order/thanks/{stripeSessionId}", name="order_success")
     */
    public function index(Cart $cart,$stripeSessionId)
    {
        $order = $this->entityManager->getRepository(Order::class)->findOneByStripeSessionId($stripeSessionId);

        if (!$order || $order->getUser() != $this->getUser()){
            return $this->redirectToRoute('home');
        }

        if (!$order->getIsPaid()){
            //vider la session "cart"
            $cart->remove();
            //modifier statut isPaid en le passant a 1
            $order->setIsPaid(1);
            $this->entityManager->flush();

            //envoyer email au client pour confirmer la commande
        }







        return $this->render('order_success/index.html.twig',[
            'order' => $order
        ]);
        //afficher qq informations de la commande de l'utilisateur via tableau passé aà twig
    }
}
