if (CurrentSound == -1 and array_length(SoundQueue) > 0)
{
	CurrentSound = SoundQueue[0];
	audio_play_sound(CurrentSound,1,false);
	array_delete(SoundQueue,0,1);
}

if (CurrentSound != -1 and !audio_is_playing(CurrentSound))
{
	CurrentSound = -1;
}