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
  nextobjectid = 122,
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
      columns = 9,
      image = "../img/markers.png",
      imagewidth = 162,
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
      tilecount = 9,
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
            ["meta"] = false,
            ["triggered"] = false
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
            ["waitTime"] = 0
          }
        },
        {
          id = 7,
          type = "sand-upgrade"
        },
        {
          id = 8,
          type = "trigger",
          properties = {
            ["target"] = { id = 0 }
          }
        }
      }
    },
    {
      name = "tiles",
      firstgid = 10,
      tilewidth = 16,
      tileheight = 16,
      spacing = 2,
      margin = 1,
      columns = 9,
      image = "../img/tiles.png",
      imagewidth = 162,
      imageheight = 288,
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
              name = "ground",
              probability = 1,
              tile = 27,
              properties = {}
            },
            {
              color = { 0, 0, 255 },
              name = "tree",
              probability = 1,
              tile = 108,
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
            },
            {
              wangid = { 0, 0, 0, 0, 2, 0, 0, 0 },
              tileid = 81
            },
            {
              wangid = { 0, 0, 2, 2, 2, 0, 0, 0 },
              tileid = 82
            },
            {
              wangid = { 0, 0, 2, 2, 2, 2, 2, 0 },
              tileid = 83
            },
            {
              wangid = { 0, 0, 0, 0, 2, 2, 2, 0 },
              tileid = 84
            },
            {
              wangid = { 2, 0, 2, 2, 2, 2, 2, 0 },
              tileid = 85
            },
            {
              wangid = { 2, 2, 2, 0, 2, 0, 2, 2 },
              tileid = 86
            },
            {
              wangid = { 2, 0, 2, 2, 2, 0, 2, 2 },
              tileid = 87
            },
            {
              wangid = { 2, 0, 2, 2, 2, 0, 2, 0 },
              tileid = 88
            },
            {
              wangid = { 2, 0, 2, 0, 2, 2, 2, 0 },
              tileid = 89
            },
            {
              wangid = { 2, 0, 0, 0, 2, 0, 0, 0 },
              tileid = 90
            },
            {
              wangid = { 2, 2, 2, 2, 2, 0, 0, 0 },
              tileid = 91
            },
            {
              wangid = { 2, 2, 2, 2, 2, 2, 2, 2 },
              tileid = 92
            },
            {
              wangid = { 2, 0, 0, 0, 2, 2, 2, 2 },
              tileid = 93
            },
            {
              wangid = { 2, 2, 2, 2, 2, 0, 2, 0 },
              tileid = 94
            },
            {
              wangid = { 2, 0, 2, 0, 2, 2, 2, 2 },
              tileid = 95
            },
            {
              wangid = { 2, 2, 2, 0, 2, 2, 2, 0 },
              tileid = 96
            },
            {
              wangid = { 2, 2, 2, 0, 2, 0, 2, 0 },
              tileid = 97
            },
            {
              wangid = { 2, 0, 2, 0, 2, 0, 2, 2 },
              tileid = 98
            },
            {
              wangid = { 2, 0, 0, 0, 0, 0, 0, 0 },
              tileid = 99
            },
            {
              wangid = { 2, 2, 2, 0, 0, 0, 0, 0 },
              tileid = 100
            },
            {
              wangid = { 2, 2, 2, 0, 0, 0, 2, 2 },
              tileid = 101
            },
            {
              wangid = { 2, 0, 0, 0, 0, 0, 2, 2 },
              tileid = 102
            },
            {
              wangid = { 2, 2, 2, 2, 2, 2, 2, 0 },
              tileid = 104
            },
            {
              wangid = { 2, 0, 2, 2, 2, 2, 2, 2 },
              tileid = 105
            },
            {
              wangid = { 0, 0, 2, 0, 2, 0, 0, 0 },
              tileid = 106
            },
            {
              wangid = { 0, 0, 0, 0, 2, 0, 2, 0 },
              tileid = 107
            },
            {
              wangid = { 0, 0, 2, 0, 0, 0, 0, 0 },
              tileid = 109
            },
            {
              wangid = { 0, 0, 2, 0, 0, 0, 2, 0 },
              tileid = 110
            },
            {
              wangid = { 0, 0, 0, 0, 0, 0, 2, 0 },
              tileid = 111
            },
            {
              wangid = { 2, 0, 2, 0, 2, 0, 2, 0 },
              tileid = 112
            },
            {
              wangid = { 2, 2, 2, 2, 2, 0, 2, 2 },
              tileid = 113
            },
            {
              wangid = { 2, 2, 2, 0, 2, 2, 2, 2 },
              tileid = 114
            },
            {
              wangid = { 2, 0, 2, 0, 0, 0, 0, 0 },
              tileid = 115
            },
            {
              wangid = { 2, 0, 0, 0, 0, 0, 2, 0 },
              tileid = 116
            },
            {
              wangid = { 0, 0, 2, 2, 2, 0, 2, 0 },
              tileid = 117
            },
            {
              wangid = { 0, 0, 2, 0, 2, 2, 2, 0 },
              tileid = 118
            },
            {
              wangid = { 0, 0, 2, 0, 2, 0, 2, 0 },
              tileid = 119
            },
            {
              wangid = { 2, 0, 2, 2, 2, 0, 0, 0 },
              tileid = 120
            },
            {
              wangid = { 2, 0, 0, 0, 2, 2, 2, 0 },
              tileid = 121
            },
            {
              wangid = { 2, 2, 2, 0, 2, 0, 0, 0 },
              tileid = 122
            },
            {
              wangid = { 2, 0, 0, 0, 2, 0, 2, 2 },
              tileid = 123
            },
            {
              wangid = { 2, 0, 2, 0, 2, 0, 0, 0 },
              tileid = 124
            },
            {
              wangid = { 2, 0, 0, 0, 2, 0, 2, 0 },
              tileid = 125
            },
            {
              wangid = { 2, 2, 2, 0, 0, 0, 2, 0 },
              tileid = 126
            },
            {
              wangid = { 2, 0, 2, 0, 0, 0, 2, 2 },
              tileid = 127
            },
            {
              wangid = { 2, 0, 2, 0, 0, 0, 2, 0 },
              tileid = 128
            }
          }
        }
      },
      tilecount = 144,
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
          id = 68,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 69,
          properties = {
            ["collidable"] = true,
            ["platform"] = true
          }
        },
        {
          id = 70,
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
        },
        {
          id = 81,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 82,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 83,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 84,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 85,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 86,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 87,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 88,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 89,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 90,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 91,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 92,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 93,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 94,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 95,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 96,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 97,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 98,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 99,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 100,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 101,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 102,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 104,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 105,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 106,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 107,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 108,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 109,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 110,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 111,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 112,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 113,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 114,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 115,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 116,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 117,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 118,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 119,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 120,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 121,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 122,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 123,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 124,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 125,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 126,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 127,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 128,
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
      data = "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AQJ7BOrc8dKyWHmf4sxn+3WfRT9cw7/Mo5Evj8yR0da8r2u0t+zzM5aveVzVx5nXBAgQIECAAAECBAi8XIHIYi8hh5VZ7xrP9ltHWfjPyMKtHB95vpwfme1bbSzLyvaWdYrlLcfh0nbHPo6eX9O3tLZMgAABAgQIECBAgACBLFDnsC25q8zTt7x8K1m/PvLqPlibSx8hZ24xeIR218eC1wQIECBAgAABAgQIEDhKoM5dR+X/azyblQ+POmpslwABAgQIECBAgAABAgTuTaDM/3uzf5nxZe97OxLUlwABAgQIECBAgAABAgQeVeAbqWF7vq/v/zN71CNDuwgQIECAAAECBAgQIEDgngXKZ/1rf8c8r++Z/j33vroTIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIECAAAECBAgQIEDg+gL/B1oHB8k="
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
          x = 232,
          y = 400,
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
          id = 54,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3128,
          y = 736,
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
            ["meta"] = false
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
          x = 5040,
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
          id = 89,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4848,
          y = 656,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 91,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5472,
          y = 656,
          width = 64,
          height = 16,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {}
        },
        {
          id = 92,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5584,
          y = 768,
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
          id = 93,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5696,
          y = 672,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 94,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5920,
          y = 688,
          width = 32,
          height = 16,
          rotation = 0,
          gid = 7,
          visible = true,
          properties = {
            ["differenceX"] = 96,
            ["waitTime"] = 0
          }
        },
        {
          id = 95,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6064,
          y = 688,
          width = 32,
          height = 16,
          rotation = 0,
          gid = 7,
          visible = true,
          properties = {
            ["differenceX"] = 96,
            ["waitTime"] = 0
          }
        },
        {
          id = 103,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6384,
          y = 528,
          width = 16,
          height = 48,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {}
        },
        {
          id = 104,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6384,
          y = 544,
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
          id = 105,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6720,
          y = 704,
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
          id = 106,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6720,
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
          id = 107,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6720,
          y = 672,
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
          id = 108,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6816,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 109,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7056,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["triggered"] = true
          }
        },
        {
          id = 110,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7218,
          y = 490,
          width = 28,
          height = 10,
          rotation = 0,
          gid = 7,
          visible = true,
          properties = {
            ["differenceY"] = -64
          }
        },
        {
          id = 111,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7200,
          y = 640,
          width = 16,
          height = 64,
          rotation = 0,
          gid = 6,
          visible = true,
          properties = {
            ["meta"] = true
          }
        },
        {
          id = 112,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7328,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["triggered"] = true
          }
        },
        {
          id = 113,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7640,
          y = 560,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 8,
          visible = true,
          properties = {}
        },
        {
          id = 114,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2864,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 9,
          visible = true,
          properties = {
            ["target"] = { id = 115 }
          }
        },
        {
          id = 115,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2928,
          y = 768,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["triggered"] = true
          }
        },
        {
          id = 116,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6976,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 9,
          visible = true,
          properties = {
            ["target"] = { id = 109 }
          }
        },
        {
          id = 117,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7280,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 9,
          visible = true,
          properties = {
            ["target"] = { id = 112 }
          }
        },
        {
          id = 118,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7904,
          y = 624,
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
          id = 119,
          name = "",
          type = "",
          shape = "rectangle",
          x = 272,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 9,
          visible = true,
          properties = {
            ["target"] = { id = 120 }
          }
        },
        {
          id = 120,
          name = "",
          type = "",
          shape = "rectangle",
          x = 320,
          y = 368,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 3,
          visible = true,
          properties = {
            ["triggered"] = true
          }
        },
        {
          id = 121,
          name = "",
          type = "",
          shape = "rectangle",
          x = 288,
          y = 336,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 8,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
