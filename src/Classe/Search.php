<?php
namespace App\Classe;

use App\Entity\Category;
use PhpParser\Builder\Class_;

class Search
{
    /**
     * @var string
     */
    public $string = '';

    /**
     * @var Category[]
     */
    public $categories = [];
    public function __toString(): string
    {
        return '';
    }

}
