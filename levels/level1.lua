return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.5.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 1000,
  height = 100,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 9,
  nextobjectid = 59,
  backgroundcolor = { 72, 72, 252 },
  properties = {},
  tilesets = {
    {
      name = "markers",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 1,
      columns = 5,
      image = "../img/markers.png",
      imagewidth = 90,
      imageheight = 18,
      transparentcolor = "#000000",
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 5,
      tiles = {
        {
          id = 0,
          type = "start",
          properties = {
            ["type"] = "start"
          }
        },
        {
          id = 1,
          type = "key",
          properties = {
            ["meta"] = false
          }
        },
        {
          id = 2,
          type = "door",
          properties = {
            ["meta"] = false
          }
        },
        {
          id = 3,
          type = "shrine"
        },
        {
          id = 4,
          type = "arrow-right"
        }
      }
    },
    {
      name = "tiles",
      firstgid = 6,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 1,
      columns = 9,
      image = "../img/tiles.png",
      imagewidth = 162,
      imageheight = 144,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {
        {
          name = "wall",
          tile = 27,
          properties = {},
          colors = {
            {
              color = { 255, 0, 0 },
              name = "wall",
              probability = 1,
              tile = 27,
              properties = {}
            }
          },
          wangtiles = {
            {
              wangid = { 0, 0, 0, 0, 1, 0, 0, 0 },
              tileid = 0
            },
            {
              wangid = { 0, 0, 1, 1, 1, 0, 0, 0 },
              tileid = 1
            },
            {
              wangid = { 0, 0, 1, 1, 1, 1, 1, 0 },
              tileid = 2
            },
            {
              wangid = { 0, 0, 0, 0, 1, 1, 1, 0 },
              tileid = 3
            },
            {
              wangid = { 1, 0, 1, 1, 1, 1, 1, 0 },
              tileid = 4
            },
            {
              wangid = { 1, 1, 1, 0, 1, 0, 1, 1 },
              tileid = 5
            },
            {
              wangid = { 1, 0, 1, 1, 1, 0, 1, 1 },
              tileid = 6
            },
            {
              wangid = { 1, 0, 1, 1, 1, 0, 1, 0 },
              tileid = 7
            },
            {
              wangid = { 1, 0, 1, 0, 1, 1, 1, 0 },
              tileid = 8
            },
            {
              wangid = { 1, 0, 0, 0, 1, 0, 0, 0 },
              tileid = 9
            },
            {
              wangid = { 1, 1, 1, 1, 1, 0, 0, 0 },
              tileid = 10
            },
            {
              wangid = { 1, 1, 1, 1, 1, 1, 1, 1 },
              tileid = 11
            },
            {
              wangid = { 1, 0, 0, 0, 1, 1, 1, 1 },
              tileid = 12
            },
            {
              wangid = { 1, 1, 1, 1, 1, 0, 1, 0 },
              tileid = 13
            },
            {
              wangid = { 1, 0, 1, 0, 1, 1, 1, 1 },
              tileid = 14
            },
            {
              wangid = { 1, 1, 1, 0, 1, 1, 1, 0 },
              tileid = 15
            },
            {
              wangid = { 1, 1, 1, 0, 1, 0, 1, 0 },
              tileid = 16
            },
            {
              wangid = { 1, 0, 1, 0, 1, 0, 1, 1 },
              tileid = 17
            },
            {
              wangid = { 1, 0, 0, 0, 0, 0, 0, 0 },
              tileid = 18
            },
            {
              wangid = { 1, 1, 1, 0, 0, 0, 0, 0 },
              tileid = 19
            },
            {
              wangid = { 1, 1, 1, 0, 0, 0, 1, 1 },
              tileid = 20
            },
            {
              wangid = { 1, 0, 0, 0, 0, 0, 1, 1 },
              tileid = 21
            },
            {
              wangid = { 1, 1, 1, 1, 1, 1, 1, 0 },
              tileid = 23
            },
            {
              wangid = { 1, 0, 1, 1, 1, 1, 1, 1 },
              tileid = 24
            },
            {
              wangid = { 0, 0, 1, 0, 1, 0, 0, 0 },
              tileid = 25
            },
            {
              wangid = { 0, 0, 0, 0, 1, 0, 1, 0 },
              tileid = 26
            },
            {
              wangid = { 0, 0, 1, 0, 0, 0, 0, 0 },
              tileid = 28
            },
            {
              wangid = { 0, 0, 1, 0, 0, 0, 1, 0 },
              tileid = 29
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 1, 0 },
              tileid = 30
            },
            {
              wangid = { 1, 0, 1, 0, 1, 0, 1, 0 },
              tileid = 31
            },
            {
              wangid = { 1, 1, 1, 1, 1, 0, 1, 1 },
              tileid = 32
            },
            {
              wangid = { 1, 1, 1, 0, 1, 1, 1, 1 },
              tileid = 33
            },
            {
              wangid = { 1, 0, 1, 0, 0, 0, 0, 0 },
              tileid = 34
            },
            {
              wangid = { 1, 0, 0, 0, 0, 0, 1, 0 },
              tileid = 35
            },
            {
              wangid = { 0, 0, 1, 1, 1, 0, 1, 0 },
              tileid = 36
            },
            {
              wangid = { 0, 0, 1, 0, 1, 1, 1, 0 },
              tileid = 37
            },
            {
              wangid = { 0, 0, 1, 0, 1, 0, 1, 0 },
              tileid = 38
            },
            {
              wangid = { 1, 0, 1, 1, 1, 0, 0, 0 },
              tileid = 39
            },
            {
              wangid = { 1, 0, 0, 0, 1, 1, 1, 0 },
              tileid = 40
            },
            {
              wangid = { 1, 1, 1, 0, 1, 0, 0, 0 },
              tileid = 41
            },
            {
              wangid = { 1, 0, 0, 0, 1, 0, 1, 1 },
              tileid = 42
            },
            {
              wangid = { 1, 0, 1, 0, 1, 0, 0, 0 },
              tileid = 43
            },
            {
              wangid = { 1, 0, 0, 0, 1, 0, 1, 0 },
              tileid = 44
            },
            {
              wangid = { 1, 1, 1, 0, 0, 0, 1, 0 },
              tileid = 45
            },
            {
              wangid = { 1, 0, 1, 0, 0, 0, 1, 1 },
              tileid = 46
            },
            {
              wangid = { 1, 0, 1, 0, 0, 0, 1, 0 },
              tileid = 47
            }
          }
        }
      },
      tilecount = 72,
      tiles = {
        {
          id = 0,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 1,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 2,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 3,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 4,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 5,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 6,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 7,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 8,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 9,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 10,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 11,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 12,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 13,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 14,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 15,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 16,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 17,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 18,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 19,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 20,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 21,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 23,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 24,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 25,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 26,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 27,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 28,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 29,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 30,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 31,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 32,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 33,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 34,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 35,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 36,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 37,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 38,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 39,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 40,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 41,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 42,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 43,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 44,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 45,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 46,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 47,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 48,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 49,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 50,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 51,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 52,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 53,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 54,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 55,
          properties = {
            ["collidable"] = false
          }
        },
        {
          id = 56,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 57,
          properties = {
            ["collidable"] = true,
            ["spike"] = "up"
          }
        },
        {
          id = 58,
          properties = {
            ["collidable"] = true,
            ["spike"] = "right"
          }
        },
        {
          id = 59,
          properties = {
            ["collidable"] = true,
            ["spike"] = "left"
          }
        },
        {
          id = 60,
          properties = {
            ["collidable"] = true,
            ["spike"] = "down"
          }
        },
        {
          id = 63,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 64,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 65,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 1000,
      height = 100,
      id = 3,
      name = "world",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eAHt3cuO5LYZBtABshgPvEmy8thwFk7gAZKlA1/jDBAgyfu/UcjAP4YgKJYkUmqp6xQgqEoXXg7Vi09UVb998+bNZzuXd+m8O77epkYv9XlWn3p1LNXd2j6rPXccJ20mQIAAAQIECBAgQIDAMwn8PnX2DzuXP94UqtfnWX3q1bHFe1Z7bjpUmk2AAAECBAgQIECAAIGnERjJkXfNjr0+z+pTrw75/Gn+vHSUAAECBAgQIECAAAECqwVGcuSsLLu6sZMO7PV5Vp96dcjnkwZSMQQIECBAgAABAgQIEHhFAiM5claWPZuz1+dZferVIZ+fPeLqI0CAAAECBAgQIECAwPUFRnLkrCx7tlKvz7P61KtDPj97xNVHgAABAgQIECBAgACB6wuM5MhZWfZspV6fZ/WpV4d8fvaIq48AAQIECBAgQIAAAQLXFxjJkbOy7NlKvT7P6lOvDvn87BFXHwECBAgQIECAAAECBK4vMJIjZ2XZs5V6fZ7Vp14d8vnZI64+AgQIECBAgAABAgQIXF9gJEfOyrJnK/X6PKtPvTrk87NHXH0ECBAgQIAAAQIECBC4vsBIjpyVZc9W6vV5Vp96dcjnZ4+4+ggQIECAAAECBAgQIHB9gZEcOSvLnq3U6/OsPvXqkM/PHnH1ESBAgAABAgQIECBA4PoCIzlyVpY9W6nX51l96tUhn5894uojQIAAAQIECBAgQIDA9QVGcuSsLHu2Uq/Ps/rUq0M+P3vE1UeAAAECBAgQIECAAIHrC4zkyFlZ9mylXp9n9alXh3x+9oirjwABAgQIECBAgAABAtcXGMmRs7Ls2Uq9Ps/qU68O+fzsEVcfAQIECBAgQIAAAQIEri8wkiNnZdmzld6nCr9NSysnz+rTiGvZrlntOdtYfQQIECBAgAABAgQIECCwTWAkR945O5YZ/UMi+/K35attfItHj7jK54usdhAgQIAAAQIECBAgQODVCozkyDvn8zygOaN/npZZmTyXGa8R1zKf/ykV+C4KtSZAgAABAgQIECBAgACBVyswkiPvns/zoH5x0MiOuJb5PL/PGf2ztMjpBw2WYgkQIECAAAECBAgQIHABgZEceVY+f5uccj69U0Ydca3zeXw2l36BPxhNIECAAAECBAgQIECAwEECIznyrHxetvGsOke5yzZHvp6xjrn0O92rGLV0PgECBAgQIECAAAECBJ5BYCRHrsnKee770XPZj+bHyzauqbM3bmVdMSffWj9qc6+OvC9/tz1+cy7WS78Zvze3l1k9+jDa7kf9Gt2/1v8u/Rn1cD4BAgQIECBAgAABAgRCoMy+W3Nizsofo6BiXWawr9P2R5m6bEPr2HJ/ZNJWDi3rzfmuPibvz+1Z088jniVvZfbZ2T18It+uWddOiWjaqx6Ttf4xRnV/jmzrtE4riAABAgQIECBAgAABAjsEyuwbmWjtOrLT96neH35bfkzrOoPFcUtZsTy+dWy5P9q25rj6mFY5UV5rnc8/Kg/+lMr+OS2xPiO7t/qYt9VOrXsb6bBdr5Hrq9XeaOtR47Krk04iQIAAAQIECBAgQIDABIHZ+amVqe68rTWfP4H9/0VENo/1LwsFR3af/Xx8b1wiBy/dU3mU4WPefOmeyIfU13h2YGnd62+0T05fuGhsJkCAAAECBAgQIEDgdgLyef959yPzeb5YIpuvuXByTq8z61K23bO9LruX33O+7v3f+KXrKnJ579ywiPsSuS9LbZPTQ8uaAAECBAgQIECAAIG7CyzlqF42e6Z9R+fzfP0szZu3rq3IrJ+nnWsybquMpW1Rdi8Px9g/cqnvJWzJ5a32Rdt6Od1cekvONgIECBAgQIAAAQIE7iIgn/fnz2N+tvecd73vjJz4xcEXWJ2vI5fn9aO582havrZGc3mUFeteTn90zyDKsCZAgAABAgQIECBAgMAVBeTzfj4vc+na961Mf0Zmn319LV0ba3NwPn/tsVvb3mpbdr+j89a+O54AAQIECBAgQIAAgdcp0Mo5a3Oo49Zl+zyH/Pe0/KW6hN6mz/Xce/n5pbNmzFXX32Vf+1x9Pn/tsRXNw4+jbXtYgQMIECBAgAABAgQIECBwsoB8vi5j1/ci4rntOru2Prcyas7mS79tHnWV8/AvndVPvixVR4AAAQIECBAgQIAAgacTkM+35/OczVuZe+3FsyabR0aP9dFZPbdpyz2Af6Tje8sji1zflZ4VeNRe+wkQIECAAAECBAgQIHC0gHy+PZ+PfKd6TzaPjB7rMqvnjPt9Wn74bfkxrcvcu/Z9nsuvyy3P/Vva/+di+Wd6/++0/Kda/ps+533lua339bMDZd0z+pPr3HK/IR3uRYAAAQIECBAgQIAAgRcVkM/n5PPWXHIMbDlXXOfSyNxXXX9IncjP7LeeF/g1Olis87arXFMj91GKLnlLgAABAgQIECBAgACBUwSukqWumk9b7WrlvnoeOc8h5/nmv6blrpl8KZfHhSmfh4Q1AQIECBAgQIAAAQIExgXk8znz50sjEb8z/m06oJX1r7It5skfZfKyn618np8VuMr9iNZ9lLL93hMgQIAAAQIECBAgQOBKAvL59ty8J/ddwbnM4PXvzLeeX390nUY+z5k8vmN+lWye73vEd9p9D/3RSNpPgAABAgQIECBAgMAVBK6QG68yh7y2HXfM5zmb78ngrWu0zOM5l6/N5K37A2c8V7BnvFr9to0AAQIECBAgQIAAAQJHCsTz1/V86mv4fFT2y3nv48blpe+DjGbUMpOvzeNxvyNyeev+QL7+jhqnqH+070f+/SmbAAECBAgQIECAAAECzyBwVCaO56bjme41662ZNrLlrPWWjFpm8ejb3vbnbN7K5eX1lzP6T2n5ecL6l1RGbbal7+l0LwIECBAgQIAAAQIECBCYLHBUPq/z3x0+r8mokcv3ZvGWw5p687BHPt97CeRcHmXU7Vjbhr11O48AAQIECBAgQIAAAQIE+gLy+ae55F5GXZPL8zz40ncelp5PXzN3HiMY2To+b13H+ebPt8o5ngABAgQIECBAgAABAscLyOeP8/k3aRi+S8tS9o7tvWfU36fz64y+JZvnKyHydX6/52X+fI+acwgQIECAAAECBAgQIHCOgHz+OJ/PGomc0SPL53Uvzy/VmTP23lfk+1yG59v3KjqPAAECBAgQIECAAAECxwjI55+yav5Nu6P/D/i/Uh2x7BnRkXyez42MLp/v0XcOAQIECBAgQIAAAQIEjhOo53TL+d3X9r5+vrzOqPlz/O780Tn9uBFdLjmyufnzZSN7CBAgQIAAAQIECBAgQOB4gS3PCkROj/+ddpW8/rsBJvPnA3hOJUCAAAECBAgQIECAAIFpAlvyeT23Xuf1yO15vZTd4zff49j6uHp/HJfXMdddr8uMXe9b+9n8+bRLSkEECBAgQIAAAQIECBAgsENgJJ/Xeb38nP8v28fGUtdX//+2en9Z5tnv67bt4HUKAQIECBAgQIAAAQIECBBYJfA+HbXmO+hbs/HS3PrXqb6yrDoDy+erhs1BBAgQIECAAAECBAgQIPAKBY7K6GUOX3pfz7PL56/wAtMlAgQIECBAgAABAgQIEFgt8FIZvZ5nr+fXl3L9Gdvruf3VmA4kQIAAAQIECBAgQIAAAQIDAi+V0c/I2nvqkM8HLianEiBAgAABAgQIECBAgMCQgIz+6fvx8vnQpeRkAgQIECBAgAABAgQIEBgUyBn9y7Qc8btxe+axX+oc+XzwQnI6AQIECBAgQIAAAQIECEwRiJyes3q9PEN2l8+nXEYKIUCAAAECBAgQaAi8Tds+27G8a5RlEwECzy3Qy+51lr/r56+ee4j1ngABAgQIECBA4CCBnM33/i6yOaSDBkWxBAgQIECAAAECBAgQIPA0AjFn/iibf0giS3Nc5pCe5nLRUQIECBAgQIAAAQIECBCYLNDK5TL4ZGTFESBAgAABAgQIECBAgACBhkBk8vwd85gvLzO5efAGmk0ECBAgQIAAAQIECBAgQGCCQCuT5/9FFLlcJp+ArAgCBAgQIECAAAECBAgQINAR+Cbt+y4t+Xvj9f868ptuHTi7CBAgQIAAAQIECBAgQIDAQQL1/zoyb34QtGIJECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgACBTQL/A7qBYWg="
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "markers",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 296,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 608,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 24,
          name = "",
          type = "",
          shape = "rectangle",
          x = 848,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {
            ["meta"] = false
          }
        },
        {
          id = 25,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1552,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {
            ["used"] = true
          }
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1824,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2088,
          y = 496,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2240,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2656,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2800,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 42,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2864,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 53,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2544,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 54,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2544,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
