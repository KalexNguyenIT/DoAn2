<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\View\Component;

class AlertSuccess extends Component
{
    /**
     * Create a new component instance.
     */
    public $message;
    public function __construct($message="Successfully uploaded!")
    {
        $this->message = $message;
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.alert-success');
    }
}
