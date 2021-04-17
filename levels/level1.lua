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
  nextobjectid = 128,
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
      columns = 10,
      image = "../img/markers.png",
      imagewidth = 180,
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
      tilecount = 10,
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
        },
        {
          id = 9,
          type = "boss"
        }
      }
    },
    {
      name = "tiles",
      firstgid = 11,
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
      data = "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BBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAIFbF/h/LDyT/A=="
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
          id = 123,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8016,
          y = 624,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        },
        {
          id = 124,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 592,
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
          id = 125,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8544,
          y = 576,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 10,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
