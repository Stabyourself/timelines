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
      data = "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AQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQAABBBBAAAEEEEAAAQQQQACBaxf4f+KazV0="
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
