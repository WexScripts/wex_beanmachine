WEX = {}

WEX.Debug = false

WEX.NotifyTtile = "Bean Machine"
WEX.NotifyType = "ox" --ox/okok/esx/custom-cl_edit.lua
WEX.Locale = "en"
WEX.CupItem = "trash_coffee"

WEX.BeanMachineJob = "bean_machine"

WEX.Blip = {
        Label = "Bean Machine",
        Coords = vector3(119.4687, -1044.7166, 29.2779),
        Sprite = 459,
        Color = 0,
        Size = 1.0,
        Opacity = 1.0,
}



WEX.CafeMenu = {
    {
        title = 'Mocha',
        icon = 'https://i.postimg.cc/K8kKGBc3/coffee-mocha.png',
        metadata = {
          {label = 'Price', value = 300}
        },
      },
      {
        title = 'Cappuccino',
        icon = 'https://i.postimg.cc/0yTzbjrW/coffee-cpcno.png',
        metadata = {
          {label = 'Price', value = 300}
        },
      },
      {
        title = 'Black Coffe',
        icon = 'https://i.postimg.cc/nzZMGW4q/coffee-black.png',
        metadata = {
          {label = 'Price', value = 300}
        },
      },
      {
        title = 'Americano',
        icon = 'https://i.postimg.cc/RV8FDh1S/coffee-amrcno.png',
        metadata = {
          {label = 'Price', value = 300}
        },
      },
}

WEX.CoffeeCraftItems = {
    {
        title = 'Mocha',
        icon = 'https://i.postimg.cc/K8kKGBc3/coffee-mocha.png',
        needItem =  "trash_coffee",
        getItem = "coffee_mocha",
      },
      {
        title = 'Cappuccino',
        icon = 'https://i.postimg.cc/0yTzbjrW/coffee-cpcno.png',
        needItem =  "trash_coffee",
        getItem = "coffee_cpcno",
      },
      {
        title = 'Black Coffe',
        icon = 'https://i.postimg.cc/nzZMGW4q/coffee-black.png',
        needItem =  "trash_coffee",
        getItem = "coffee_black",
      },
      {
        title = 'Americano',
        icon = 'https://i.postimg.cc/RV8FDh1S/coffee-amrcno.png',
        needItem =  "trash_coffee",
        getItem = "coffee_amrcno",
      },
}

-- POSITIONS

WEX.Tables = {
    {
        position = vec3(118.8572, -1034.0895, 28.9826),
        rotation = 159.8279,
        size = vec3(1.0, 2.0, 0.50),
    },
    {
        position = vec3(120.4049, -1029.4836, 28.9341),
        rotation = 160.2498,
        size = vec3(1.0, 1.5, 0.50),
    }
}

WEX.CrucibleStash = {
    {
        position = vec3(123.8509, -1039.2827, 30.3428),
        rotation = 160.2498,
        size = vec3(1.0, 1.5, 0.50),
    }
}

WEX.CoffeeCraft = {
    {
        position = vec3(122.7120, -1041.6689, 29.5174),
        rotation = 160.2498,
        size = vec3(0.5, 0.8, 0.5),
    },
    {
        position = vec3(124.4091, -1036.8202, 29.4309),
        rotation = 160.2498,
        size = vec3(0.5, 0.8, 0.5),
    }
}

WEX.Cookies = {
    {
        position = vec3(121.4563, -1038.4457, 29.5579),
        rotation = 160.2498,
        size = vec3(0.5, 1.2, 0.5),
    }
}