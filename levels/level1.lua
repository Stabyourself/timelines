return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.5.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 1020,
  height = 100,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 9,
  nextobjectid = 89,
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
      columns = 7,
      image = "../img/markers.png",
      imagewidth = 126,
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
      tilecount = 7,
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
          type = "arrow-shooter",
          properties = {
            ["dir"] = "",
            ["spawnTime"] = 2
          }
        },
        {
          id = 5,
          type = "box",
          properties = {
            ["meta"] = false
          }
        },
        {
          id = 6,
          type = "moving-platform",
          properties = {
            ["differenceX"] = 0,
            ["differenceY"] = 0,
            ["travelTime"] = 2,
            ["waitTime"] = 1
          }
        }
      }
    },
    {
      name = "tiles",
      firstgid = 8,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 1,
      columns = 9,
      image = "../img/tiles.png",
      imagewidth = 162,
      imageheight = 162,
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
      tilecount = 81,
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
          id = 61,
          properties = {
            ["collidable"] = true,
            ["spike"] = "up"
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
        },
        {
          id = 66,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 67,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 72,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 73,
          properties = {
            ["collidable"] = true
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
      width = 1020,
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
      data = "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A2NcW/drHM4+x+FkT4AAAQIECBAgQIAAga0COTOu+R3+Ogtfer2kelv5rM5gdd66lP8utTvz/bpvW22POj5y/5rPupfH3DvrZ5+91t/adfBY5viotaQdAgQIECBAgAABAgSelsA9M1fOW6P7/2tz2x7HyYLHrPNrr1eU1y6ufX6Gax7HKGuFAAECBAgQIECAAIHnKnCvzL8k8PJzAPX9/z1y/No65f3n+tNg3AQIECBAgAABAgQIEHhaAvfK/Gvz99HHyftPa30bDQECBAgQIECAAAECBJ6zgMz/3ff0y/vP+SfB2AkQIECAAAECBAgQIPD0BOL3qff4Hr+j79Hf0p68//TWthERIECAAAECBAgQIECAwP++O733PWjP4VqAvO+ngAABAgQIECBAYC+Bl1PF5fdYrX3+6l4dUi8BAgQeBOIzAL3rAU+h3He3W+4ECBAgQIAAAQJ7COSsf+33VLsntceMqJMAAQIECBAgQIAAAQIECFwvEPf0L2X9F6mJ3v0z96Su93cmAQIECBAgQIAAAQIECBCYKdDK+TL9TGF1ESBAgAABAgQIECBAgACBYwQi4+ffy4/7+WXGd5/+mHnQCgECBAgQIECAAAECBAgQuFWglfHz34uKnC/j3yrsfAIECBAgQIAAAQIECBAgcKzA26m599OWf+++/ltWvmPv2LnQGgECBAgQIECAAAECBAgQ2EOg/ltW7uvvoaxOAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAgQIECBAgAABAvsJ/AeAGiQR"
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
          x = 368,
          y = 144,
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
          x = 1600,
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
          x = 1168,
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
          x = 1344,
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
          x = 1872,
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
          x = 224,
          y = 400,
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
          x = 2144,
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
          x = 2408,
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
          x = 2496,
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
          x = 2560,
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
          x = 2976,
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
          x = 3120,
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
          x = 3184,
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
          x = 2880,
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
          x = 2864,
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
          x = 2864,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 60,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3480,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 2,
          visible = true,
          properties = {}
        },
        {
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3664,
          y = 528,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {}
        },
        {
          id = 67,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4320,
          y = 656,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "left"
          }
        },
        {
          id = 74,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 400,
          width = 16,
          height = 32,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4512,
          y = 688,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "right"
          }
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4704,
          y = 688,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 5,
          visible = true,
          properties = {
            ["dir"] = "left"
          }
        },
        {
          id = 78,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4880,
          y = 736,
          width = 16,
          height = 80,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 84,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 368,
          width = 32,
          height = 16,
          rotation = 0,
          gid = 7,
          visible = true,
          properties = {
            ["differenceX"] = 0,
            ["differenceY"] = -64,
            ["travelTime"] = 2,
            ["waitTime"] = 0
          }
        },
        {
          id = 85,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
