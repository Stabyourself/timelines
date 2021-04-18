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
  nextobjectid = 133,
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
      data = "eAHt3d+P7EZWwPH7vhdYJJZISAnWIsSuEpS8rATa3aRJ+CUSWCHYGX4I9g14AwSP8B9cAUI7M2j/Ws7ZzJmcnHuqXGWX3e7ub0uW7bJdPz5lu+vYfe+8esVnrcBryeAXCtMvrs38+fhaGaWys/RR9RnULLJBAAEEEEAAAQQQQAABBBDYSCCLCUtpxIp5J3xLkn+1ML2TH9KdWiujVHaWPqo+3Q3gAAQQQAABBBBAAAEEEEAAgV0FspiwlEasmHdNLRYfZVYro9RfWfqo+uQSpCKAAAIIIIAAAggggAACCBxFIIsJS2nEinmv1WLxUWa1Mkr9laWPqk8uQSoCCCCAAAIIIIAAAggggMBRBLKYsJRGrJj3Wi0WH2VWK6PUX1n6qPrkEqQigAACCCCAAAIIIIAAAggcRSCLCUtpxIp5r9Vi8VFmtTJK/ZWlj6pPLkEqAggggAACCCCAAAIIIIDAUQSymLCURqyY91otFh9lViuj1F9Z+qj65BKkIoAAAggggAACCCCAAAIIHEUgiwlLacSKea/VYvFRZrUySv2VpY+qTy5BKgIIIIAAAggggAACCCCAwFEEspiwlEasmPdaLRYfZVYro9RfWfqo+uQSpCKAAAL7CryW4kp/Q3ardP427b59TGkIIIAAAgggsFwgiwlLacSKuXMtFh9lViuj1F9Z+qj65BKkIoAAAvsKjLo3ZvfLUhr30X37mNIQQAABBBBAYLlAaTyTpTPGyZ1r481RZrUysr4qpY2qTy5BKgIIILCvwHtS3Psyle55W6T/hpSX/XaA9/779j2lIYAAAggggMC8QM9YiFgx96zF4qPMamXQh3m/kIoAArchMOr+2HMvzfYddb+/jV6jlQgggAACCCCwh0A2ZimlMZbJe6Q21hxlViuj1F9Z+qj65BKkIoAAAvsLjLo/ZvfMnjTur/v3PSUigAACCCCAQF2AsUzdp2Vrbaw5avxXK4M+bOkl9kEAgWsVGHV/7LmXxn0/ENzpWoFpFwIIIIAAAghcrEAcs9TWR8WuF4tVqHhtrDnKrFZGrc/itlH1KVCQjAACCOwuMOr+GO+XPev6b/r59/u7dz0FIoAAAggggMCMQM94hlgxx6yNNUeZ1cqgD/N+IRUBBI4joH83b6t4eNT9sedemu076n5/nF67jZq0/k3Hrc7f21CmlQgggAAC5xLIxiylNMYyeS/V/n/oUWajxrOj6pNLkIoAAgjkAnoP2+r+M+r+WPrua0nn9/x5v19Cauv5s9X5ewlG1BEBBBBA4HIFWsYxtg/fdeV+9jG/jvt+/Xmayod0bWkdj1hfleb0YRc7OyOAwCCBa4/397y3ngb1Cdl8KdD6/bpnH9M3CCCAAAIIjBIoxYVZOt91dXWN+b8p01TfbdHW1vFI1m8+jX9juoh/14Naf1ua/f3vmMbvT3ftOgqrCJw73vfPYe157Nz8fWmPv3/Wlvf8fjxVnNnUL9D6/bpnH/e3giMQQAABBBDIBWrjl7iN77rc0Ke+61cGLreOR2KfZesa82tcSCw4sIMGZaWx/rdlyvptSRrX7KCOIZvVAueM9zXWnxa0QJ/h6jOBlrh/z2eppwVt4ZCyQOv3K/fTsiFbEEAAAQSOK9ATQ1zDd93TcbuiWrPW8UhPf+45Pq02jo0vAqP7+Rqu2RccFi5a4Fzx/tJY32O3Xpd7XW8nXzmWVwscrX9XN4gMEEAAAQQQcAI98eHIsczPXB3ior7jtN8lj3gH7fOzfEe/3y49R3iQtjzGBi5Ybx2P9PSn7mvv+kd7LGgih4jA6H4eec3SQQisEdBze6vz0f//KfEeWCqz557del2Wylrjlh17yhJJWyxwtP5d3BAORAABBBBAIBGIY6Pa+sixzP8ldbEk/907okyfn2/fiPfbpWcJ/rnCiFjaflfq/71py29MfXvnln3sb/Uf8bzF+nWLeav/pbSndK7O9V1p+4jrZ4t+I89jC/ydVO/vw/STlVXWc3vL87F07WRlxvvGR1K37zxPH8o83vdKecfrLitLshv+OQ3P8bYzPFr/3nZv0HoEEEAAgdECcbxSW6+NZZ6eK6bjqDhWinX2Y61sX//dWysz5lta9/nF9tVifl/PLGbX7a3/1rpWTqnec+nZMwB7HjDqWUD2DMBi59I869O5trRuj33S6m/9HtuzZV1b2+T3q52r1oaeuV4/ana0dvo2s3wcAYvz/02q9I9h+ndZXxPz67k94n4u2aSf0jv+rMx475xcjlk9W6/LLe7zrmovi6eXJRZGCLT2b3YujSifPBBAAAEEENhSoDd2yOriYzCNv/x34oOsP4aD/Her7fvk9vHbe+KzrCzN1ueXtTeWYXFsjCXjfnF7lrdP23Is+LG08xOZbB7Hs/YcQOejngX4tvnl6JQ9K5FqLPrM9aWvR8uy1fUo8bD228j+0fbpebrlubeoIznokAL/ILWKcb5fXxPz67Vr9/utGp/dH3rP/ayeWb6l+8vWbVS701aAN5pva//u0bc32gU0GwEEEEBgQ4HSmCVLt9jo+1KfHzxPP5R5jHttP4ub49zvn+3rt8d6ZPvH/ON6Lb+Y/9brW44XLNa3+Un6JvvYs4CRceWcW0u/1WJue6ZU6ssPpKH+mUa2XGuv1a9Wh8xyi7TWseecedx+pDZu4Uae6wXm4n2N/f9pYTFZHL0wq+Jhpedleu63XttZPXuuyZ6yig2Z2XCa2c7mPoHW/t3y+7uvxuyNAAIIIIBAu0CMCVgf97fQMsutxwsW67ecAdnYOIuTl6bV4utoo/H6VKl0aTxmcX7tWMvWnnNoe0p1O0JMXGqrN7N2t/RNbOse8YiZM78sgbl4/z+lOf+6sEl6Xm99/9Oqla4fu7bj82Bd988CsnqW8vTXpF/eup0nbSifYQKt/bt1vw5rEBkhgAACCCDgBPwYheVtY331rY0Xnly/rFk8dRxsMfA35Zip47iWXS3vWnxt51zNRcuKzyYs3p1aKpLsY3WLsbDVZ1RM/CdS9ufP0xdJPbKk2thzSbuzto5qX1Z/0i5X4J+l6v8hk/8Nv19e+m5fRbI4WtNHf+K9wq5pu3ayZ2STq0RWz9o1afn7+dbX18nVl8X1Aq39O/c9tb4m5IAAAggggMB4AT9GYXn7eL/2jil77+TfPT1I9z+OPwV+nuO7G+Vr2ZbG4HrO6Th8sh0rcx2T2Zi9Zf9KVi+bsljYroMRY7tPX0p69covu+S3FuPY09qsccr01t7tCbEPto5J2mt2XXu+luaUrmVL9++Tj9b6Usy/5t2+tlHP6xHXVItXPNdb7zGlesZr0u4RtfmWbT21ILBPs0Br/27Zp82VZUcEEEAAAQQ6BWrjFbZtH/+3GGfPCFrjhafO82HL3UtjqtYx1JbxQla3EfHwnwqovd//s0Zcq4vF+VPjcS27xTio1b4lb/b5UsD6r3Zt2zXdeh3vbZvF/Gve7Wv9t7x+Mx8713ti/VI9W/o09veI+0fWLk07lTaQvkigtX+5Xy7i5SAEEEAAgTMLxDEK68eI8Wv9oOPX35Xpu+HceS3r9v4wm587ttDx99xvaUOTvraqx09fSxm3srZupZr4d/p+ubS/pltdptpOK7b5sS3j1xWQhUO9b+061m1H9teY/1/ctPTf7RuTuuzdXivzZ1aJZP4U0uwYn9zTp77Pt2rvyVeO5dUCrf27VX+ubgAZIIAAAgggUBHwYxOWzxfr27vcLB6OaVPSnxrrf1umWh/aO0V9FnDu2D9pwlUmLXm/vzWEH9tu+Q5y63YcNX/vW7se9ZqfjtqI53q9GVg/ddk7XrIyfxraoffL7Jmopv2aTJNM/tPap76/t+zfk68cy6sFWvt37/N3dcPIAAEEEEAAARHw4xOWz+OxdlyoY9e5WD/27dLY/ylcNQ+y/hjSdFXr1PNM4fdkfz9pHn7dlxProPtqeX783lp2lpfml318HbLtWZp/p++Xdd+esrO8l6bFsS0x/1LJ/LjoG689XV97zeclj099k2S59LxVl3eS/LZMKpVpv6GxZ6n6/3Zqn+j6JFP8tPSp72fr3zvJ6F6m1nkst7R+Km0gfZFAa//uff4uagwHIYAAAgggEAT8GIXl88T7a8YQr6U/e2P92M8+9teY+fsy/eB5+qHMfRzduqx1ivn6Yz+S7d9x02eybP+X/Z/Lsn5+JNMXMuk2f2y2HA182SPak5W5Z1rr8wuhmv1kY9s15+BsgTe2Q+Ybr7lL8X6T9J3ec/R8/ItkWynJ7lN7t1v7oqXMuf1a+tT3sZZ5J9P9grkcMvs5ze6x/w7fWFDkX8oxdj4tOPytQ57eSnn16kHSHpN0n9Tavy3nks+XZQQQQAABBI4g4McoLB8n3vfvtm3Zxi06PrJYM8a5R+/DD6TupXdonyYXhKa1jsWO3vY19bPnFxpn2XmQcDUlZZ4+/6ZM2KkokPn6vtdrYCoefawNb5Lq6LvxX5bJ7kG1uT2nMpO94yUt185trafVRxa/9tH9anWz+vt+LC1b/95Lnncy9cy/VqnKyqmybfSm15Kh7+OS4a9UCi49C9C89TusZl/KNtbL17F3ufV7dEk9S/UnHQEEEEAAgb0ESmMW0veL/bMxhL3rtv/b/TM5IfR9+IcytY5NjtKHOv61381Oslz6aGwfP5rWM9Y+Spu3qofFLqUxd/TL1mue2bmY5UFaWaDmq9fCVD70cFveSI30dzZ6H/rC1c5+D/++pNXOdTufzMTWXVabLmo9fR31+smuHd3ve5WaWP1rbdVt1r/3snwn05J5pRovm04vS9svxLZrH/5+Mmm8n6VrWmmb5d1zXryW/DSeP8f3YE89pYp8EEAAAQQQOITA3PiF7fXx7AifbAyRxb56wrSOs0fUa00eOu5tifH9RZC1WX/veY5x3Zq273HsmrjfxthZPbNz0fcRy/MC1+T7Rpr73zL9j0w/TZoe4+l4Ttn5ZCaleDvJeliS3TPtfpT9bRMt7N1KiTEPyyvOJ8njXqa7lXM5vPo5VbeO3Wh9Z31r9574Dv2XpNiYZuulbXZvt/OkVHOL8c8V51vb5+pZqj/pCCCAAAIInFPAvseYbx/Xl4yzMUQW+/rzJI7BSnlvme5j+mzc6+vbsmxtPsrYbku7UXnHsXf27jLa12K07FyMx7NeF7gmX4335z61WHh6Ptjfr84R88+1Ycn2OznoXqaeuf6fBx/L9IlM+iwzO16SD/XxfTfqvhXzifcxe05gc3suEI/be53746FOTSqDAAIIINAosPf3JeW9/VwhG0NY7Fvqxj3GYLW+0lh/KlWuM93H9z3vb7QO8TmD/+1urf7Xui07l7LuKJ0/rcdneZL2lUAp5r8UX/33RPr/ZrbE+1+1+u0lu4/F820u5n+QrB7fzu4l5ellaf8FLftOpvvOuY/1W2L+OQNt+R4OpXP5Wu+htXa9o+h8EEAAAQQQuDCB2nfbJWzLYr4YA45a3yqW1DFE/HePf5yk+X3i+Hnvvlo67rHxqY/xe9/dWJ9PybV262PT1n4pnT+txyf0JAUBPRfjved7YZ+jrv6vVOy/ZFoT7/+WHP+bzw3Mrkv/Ttd+l+LvC/Zud8u/r2HlajWzsq0OLfOPJY9PZFo6bynD9jlJObbs5zUr31Y5vPmjv0Mo3S/2/t45d3ncH5tPG3ZEAAEEEDiQQByPXtr6tKPlVmMeP+71Y7facm+MPHqc1DPuycbRS+v/gfT3XJ9rbLF0zB2PO0leo+22zG+uX56kPfrRc1kt4/XeGo9qDOA/D7Ly6BNk2coKyZut7lFeqYys/VlDa/9GPNv/3GlvVlbAt1evy3i+2fr0XI7us9Vz1ey6e+e5XL1HLb0nZfkeMc3a+tzk5hnx/lffAUsNm7HZEQEEEEAAAQTOKqAx0hHHceeoU8u4R8fQ+sxi5Di6pVw9SSxu/7Es38l03zk/yf6Wxzl8l5Zpv5P+XOofJ+sP65PM8rfluO+GY/1xtWdQ2bal7xSlCi+frPzae0ytx0cy6d+z0Lb0fvS9tP0tjKxNLWla/pKys7o+hcTWZwvhsO7VzF3bPqJPS5XZO7a0a+AW7u1LnivbuT7yHr703naE4+x8KZ2/pCOAAAIIIIDAZQvcwpiwdUxVG/dYnFAbI34gp4K924vz0vs9PWZqPIUsVr+T/e9lmpvrc4G/cvvZ8SdJazWx/Za0zY4dMS/1zXvSFm89yXrLZ815b88f9N8u93w07ms5j0peavAHPQWGff9Q1pe2u+c81WcLH8qkcdXcMwyLvSzm/pEc84VMIz9mrmWUrl/r05HlWl57x/sWA5faWjq/SO+/L16CmV67/h4Zlyc7UZkjgAACCCCAwFUKLB3/X8I4p7eOpZhS45ffkSmOk+L6VDlDNC6NMX9PDKVZW7yucfydTC0xv9/v5PIYZSNZ/vzvKca29eY/t3+pb7T8no/FfmtjIYupfLzasrym3D3j/RgjTD3Isu+S+4r18aedZc3t3loXH/M/uUwfZPnRrX/mllsW9473564ltl92XB+vzfg9FNenlpOUfRBAAAEEEEDgagVax8K3MEa0eGOrzl76LtrX5yQrdzLdu/lfy/LfPE9/69Ljfva84CT79PbnnI1v2xax/1z50qT0Y/G9xeJr4u1es9H7q8Fe7/fXlrXkvmJ9fK54X/ur5TlO6e+u2zlmc/s3AnoOXvJ5N/o8Jr+++2+M7yc5n/gggAACCCCAAAKtAkvG5dc6XvPv91r9evf7IznApt5jdf+TTD+W6U6m+zD3cb/G/zH2P0maxfy9fWixmGQx+9HYf3TM31L+U6jZtcVZLefnN4KBX+3xUO81zxaW3Fe0TP17HXN/x8P/TY+W5SV16b0+sv3t2QGxfl98m1meOy3G3PEd+pbrk1wTfBBAAAEEEEAAgaUC/r3slmOWI+TdEoPaGN3ezWkM+SDT41LggcfdSV73Mi2dW6x/kjx6x88ai/V87LxqMW+pi5b/eTJpDGvvU+P8GuMs64dSu7N3z3Yu98S9Ws7e8b5de7Ef165f43nQcs2wT/99zsxifD/J9cAHAQQQQAABBBBA4NgCPfFOjD0sZjpXC++k4HuZeuf6f8rpvx/W404yWcxv49qWuY59J5mWfEbF/Rp/2rtcX4+ePm1p69H3sXjfXFueo03PYD1Wa+J9fRZBjL081jz6OXgL9bPrzN9rWEYAAQQQQAABBBA4tkBPvBPHtDH+9+8cS88C4jvYuF/c7vO0uDzOT0Ic03rXNY/Yvtr6iLHve1KmxqZL3/ebvxpa3K/zNX1aa/NRt1lfPEjbH2WqfZ7Cxh4r8/bnZOsysX7f9bXnuabP7lqeEZ1zn6X3iJGOdp2FS4hVBBBAAAEEEEAAgQML9MQ7PWNHHRv6GNSWY3lxDBm395S5574a+8VnFUu7WeP+NeP5GIfeWmwZ298ag+t+t2a15zWyd1kWt89dS7afxe/T0gt3x+Ps2aDV+RzzS3DasUsoCgEEEEAAAQQQuAiBtbFmaUxfisFifHWp8b62O9Z9TYfbeH4uVil5k37c98f0zT59Y9ejXUulmHhac6FyLAIIIIAAAggggAACFyawVczfEufoGN3e/V/Cb9H9u8Fpg36+lN83tPQt++wT516zs7/efPzun4vZPltcjxtc4mSJAAIIIIAAAggggMDuAueK+ePvAOL7/6PFMvYOcasOOlc/HM2Z+tzGswKL1X0s75enwoXm3+GX9ikcSjICCCCAAAIIIIAAAjcpQKxZj7E0Npl2ODPoh3o/8CxgG5+52NvH4aOW97iedrhkKQIBBBBAAAEEEEAAgYsQINYsx1Jbv9v3J8il9UNvrOh/j038/uU5Z4ajbCy/1th88icgywgggAACCCCAAAIIIHCVAhpraowwKu64hnhOY6dJpj0/R+2HLI6cOmGsbTEWvbVzzluaYckmWs2tW36dXcPuCCCAAAIIIIAAAgggcAMCMe64tVjMP6fY891+PLWsH87h7+NRiy+nWMGB69ZWLesc7fV9vsfyOc+rgd1GVggggAACCCCAAAIIIHDhAhaL3UIc5mO9c7zbz04V8x8RC2dxvMXzfj5lFdkpzbfX18mWl5yHre22Mraen9N3p26kGAQQQAABBBBAAAEEELgggRiHLYm7fDx95OWjxPrx9Ih90BuXTjHDC1xfYnAN7b7ArqLKCCCAAAIIIIAAAgggcKECMe7aKv4/x7vZ6UL7hGojgAACCCCAAAIIIIAAAgggMFrAx/9rY38f40+jK0p+CCCAAAIIIIAAAggggAACCCCwSOBbctSa3+vz/5ktYucgBBBAAAEEEEAAAQQQQAABBDYV8O/6e/+Nue4/bVo7MkcAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBC4doH/BxZ9zLc="
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
          x = 9184,
          y = 544,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 10,
          visible = true,
          properties = {}
        },
        {
          id = 128,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8704,
          y = 544,
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
          id = 129,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8336,
          y = 640,
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
          id = 130,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8336,
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
          id = 131,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8288,
          y = 640,
          width = 32,
          height = 16,
          rotation = 0,
          gid = 7,
          visible = true,
          properties = {
            ["differenceY"] = -80
          }
        },
        {
          id = 132,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8784,
          y = 592,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 4,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
