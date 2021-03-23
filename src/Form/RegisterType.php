<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\Length;

class RegisterType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('firstname',TextType::class, [
                'label'=> 'Fist Name',
                'constraints'=> new Length([
                    'min' => 2,
                    'max' => 30
                ]),
                'attr' => [
                    'placeholder'=> 'Your first name...'
                ]
            ])
            ->add('lastname', TextType::class, [
                'label'=> 'Last Name',
                'constraints'=> new Length([
                    'min' => 2,
                    'max' => 30
                ]),
                'attr' => [
                    'placeholder'=> 'Your last name...'
                ]
            ])
            ->add('email', EmailType::class, [
                'label'=> 'Email',
                'constraints'=> new Length([
                    'min' => 2,
                    'max' => 60
                ]),
                'attr'=> [
                    'placeholder'=> 'Your email...'
                ]
            ])
            ->add('password', RepeatedType::class, [
                'type' => PasswordType::class,
                'invalid_message' => 'Password and the Password Confirmation must match! ',
                'label' => 'Password',
                'required' => true,
                'first_options' => [
                    'label' => 'Password',
                    'attr' => [
                        'placeholder' => 'Your password...'
                    ]
                ],
                'second_options' => [
                    'label' => 'Confirm Password',
                    'attr' => [
                        'placeholder' => 'The Password Confirmation must match your Password.'
                    ]
                ]
            ])



            ->add( 'submit', SubmitType::class, [
                'label'=> 'Register Now'
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
