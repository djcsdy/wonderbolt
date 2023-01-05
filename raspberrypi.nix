{ pkgs, modulesPath, lib, ... }: {
    boot.loader.raspberryPi = {
        enable = true;
        firmwareConfig = [
            "camera_auto_detect=0"
            "display_auto_detect=0"
            "arm_boost=1"
            "audio_pwm_mode=1"
            "arm_64bit=1"
            "disable_poe_fan=1"
            "disable_splash=1"
            "force_eeprom_read=0"
            "initial_turbo=60"
            "enable_tvout=0"
            "ignore_lcd=1"
        ];
        version = 4;
    };
}