# SchwiftUI

Declarative, stateless components for Phoenix LiveView.

## Introduction

Components in Phoenix LiveView are composable. While there are multiple UI libraries available, each component is too verbose. This defeats the purpose of a component library. As a result, an opinionated library with minimal markup is required.

Over in Swift land, SwiftUI is quickly becoming the de facto standard for creating user interfaces for Apple platforms. The ease of adoption is aided by its declarative syntax and preview playground, which allows developers to quickly iterate and test various prototypes.

I believe that there are a lot of similarities between Phoenix LiveView and SwiftUI, such as rendering a diff view based on user interaction and state. Additionally, Phoenix LiveView also provides quick reloading so codebase changes are instantaneous. As a result, it is natural to assume that Phoenix LiveView should have a declarative UI library to aid in faster iterative development.

This also stems from a personal issue. UX/UI for each project is the same, such as navbar headers, sidebars, footers, etc. However, the components will always be slightly tweaked to match the app's theme. This is a tedious process as the same base-level tailwind classes are copied, but any modifications have to tested. The currently available component libraries are inflexible for customisation. So there needs to be an effort to standardise this.

## Goals

SchwiftUI aims to solve these issues by providing both macro components, such as `Containers` and `Layouts`, as well as micro components, such as common user interface controls.

SchwiftUI also attempts to minimise documentation lookup by ensuring that components share a similar vocabulary. For example, most components will have a `style` attribute to allow for customisation, rather than falling back on the `class` attribute. Additionally, any component with child elements will use common controls, such as `button`.

SchwiftUI will ensure that web design best practices are enforced. Component libraries should guarantee a peace of mind for developers, rather than creating another thing that they should be worried about.

## Installation

Add the package to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:schwiftui, "~> 0.0.1"}
  ]
end
```

Run `mix deps.get`

## Documentation

A `Phoenix Storybook` app is available to test the various SchwiftUI components.
