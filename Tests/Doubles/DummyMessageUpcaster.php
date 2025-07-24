<?php

declare(strict_types=1);

namespace Andreo\EventSauceBundle\Tests\Doubles;

use Andreo\EventSauceBundle\Attribute\AsUpcaster;
use EventSauce\EventSourcing\Upcasting\Upcaster;

#[AsUpcaster(aggregateClass: FooDummyAggregate::class, version: 2)]
class DummyMessageUpcaster implements Upcaster
{
    public function upcast(array $message): array
    {
    }
}
