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

class ChangePasswordType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('firstname', TextType::class, [
                'disabled' => true,
                'label'=> 'My First Name'
            ])
            ->add('lastname', TextType::class, [
                'disabled' => true,
                'label'=> 'My Last Name'
            ])
            ->add('email', EmailType::class, [
                'disabled' => true,
                'label'=> 'My Email'
            ])
            ->add('old_password', PasswordType::class, [
                'label' => "My Current Password",
                'mapped' => false,
                'attr' => [
                    'placeholder' => "Please enter your current password here."
                ]
            ])
            ->add('new_password', RepeatedType::class, [
                'type' => PasswordType::class,
                'mapped' => false,
                'invalid_message' => 'Password and the Password Confirmation must match! ',
                'label' => 'My New Password',
                'required' => true,
                'first_options' => [
                    'label' => 'My New Password',
                    'attr' => [
                        'placeholder' => 'Enter your new password...'
                    ]
                ],
                'second_options' => [
                    'label' => 'Confirm My New Password',
                    'attr' => [
                        'placeholder' => 'The Password Confirmation must match your Password.'
                    ]
                ]
            ])
            ->add( 'submit', SubmitType::class, [
                'label'=> 'Update Now'
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
