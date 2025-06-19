<?php
namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Annotation\Route;

class RedirectController
{
    #[Route('/')]
    public function index(): RedirectResponse
    {
        return new RedirectResponse('/');
    }
}
