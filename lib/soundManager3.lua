local SoundType = class("Sound")

function SoundType:initialize(path, count)
    self.instances = {}

    for i = 1, count do
        table.insert(self.instances, love.audio.newSource(path, "static"))
    end

    self.pos = 1
end

function SoundType:play(volume)
    self.instances[self.pos]:setVolume(volume or 1)
    self.instances[self.pos]:play()

    self.pos = self.pos + 1

    if self.pos > #self.instances then
        self.pos = 1
    end
end



local soundManager3 = {}

function soundManager3.loadSounds(soundList)
    soundManager3.sounds = {}

    for _, sound in ipairs(soundList) do
        soundManager3.sounds[sound.name] = SoundType:new(sound.path, sound.count)
    end
end

function soundManager3.play(soundName, volume)
    soundManager3.sounds[soundName]:play(volume)
end

return soundManager3