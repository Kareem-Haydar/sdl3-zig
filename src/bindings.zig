const c = @cImport(@cInclude("SDL3/SDL.h"));

pub const init_flags = enum(i32) { video = c.SDL_INIT_VIDEO, audio = c.SDL_INIT_AUDIO, joystick = c.SDL_INIT_JOYSTICK, haptic = c.SDL_INIT_HAPTIC, gamepad = c.SDL_INIT_GAMEPAD, events = c.SDL_INIT_EVENTS, sensor = c.SDL_INIT_SENSOR, camera = c.SDL_INIT_CAMERA };
const app_result = enum(i32) { app_continue = c.SDL_APP_CONTINUE, app_success = c.SDL_APP_SUCCESS, app_failure = c.SDL_APP_FAILURE };

pub fn init(flags: u32) bool {
    return c.SDL_Init(flags);
}

pub fn quit() void {
    c.SDL_Quit();
}
