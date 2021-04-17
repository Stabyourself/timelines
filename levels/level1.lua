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
      data = "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MMZnK/a2cXiv5RnX04RLliwQQAABBBBAAAEEELiFALFmPpYa/W7fdpC7tUNrrGi/j038/rM+p4a9bPR8tbH5YjsgywgggAACCCCAAAIIIPCQAhJrSozQK+54hHhOYqclTTM/V22HKI5cGmG0bj4WfW19zlqqYc7GW22t6/kam4bdEUAAAQQQQAABBBBA4BUI+LjjtcVi9jnFzHf7vmtpO5zhb+NRjS8XX8CO61pXyeuM+to2n7F8Zr/q2GycCgEEEEAAAQQQQAABBG4uoLHYa4jDbKx3xrv9qKuof49YOIrjNZ638yUqyKQ0W19bJl3e0w9r6615jJ6f6TupGckGAQQQQAABBBBAAAEEbiTg47A9cZeNp6+8fJVY33cP3watceniT3jD9T0Gj1DvGzYVRUYAAQQQQAABBBBAAIGbCvi4a1T8f8a72eWmbUKxEUAAAQQQQAABBBBAAAEEEOgtYOP/o7G/jfGX3gXlfAgggAACCCCAAAIIIIAAAgggsEvg6+moI9/X5/8z28XOQQgggAACCCCAAAIIIIAAAggMFbDv+lt/x1z2X4aWjpMjgAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIIIAAAggggAACCCCAAAIIPLrA/wFnI2t+"
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
