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
  nextobjectid = 96,
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
            ["waitTime"] = 0
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
      data = "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"
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
          x = 3120,
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
        }
      }
    }
  }
}
