#import <UIKit/UIKit.h>

// Объявляем наши менеджеры, чтобы компилятор знал об их существовании
@interface DeviceSpoofer : NSObject
+ (void)applyRandomSpoofing;
@end

@interface CookieLoginManager : NSObject
+ (void)showLoginChoiceAlert;
@end

@interface AutoUploadManager : NSObject
+ (void)showUploadCountChoice;
@end

// Точка входа при загрузке динамической библиотеки в процесс Instagram
__attribute__((constructor)) static void KODA_ModInit() {
    NSLog(@"[KODA Mod] Библиотека успешно внедрена и загружена!");
    
    // Применяем спуфинг устройства при старте
    [DeviceSpoofer applyRandomSpoofing];
    
    // Вы можете добавить вызов меню или оставить их доступными для вызова из интерфейса
}
