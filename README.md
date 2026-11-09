# Grava Fácil

Projeto Android para GabrielSteve616: grave a tela, pare pela notificação e encontre o MP4 na galeria, em `Movies/GravaFacil`.

## Abrir e executar

1. Instale o Android Studio com JDK 17 e Android SDK 35.
2. Abra esta pasta como projeto Android.
3. Use Gradle 9.3.1 na configuração do Gradle do Android Studio (o wrapper não está incluído).
4. Sincronize o projeto e execute em um celular Android 10 ou superior.
5. Toque em **Iniciar gravação**, autorize a captura e depois pare pela notificação ou pelo app.

Com Gradle 9.3.1 instalado, `gradle assembleDebug` gera `app/build/outputs/apk/debug/app-debug.apk`. O projeto usa Android Gradle Plugin 9.1.0.

## Escopo desta versão

- Vídeo H.264 em MP4, 30 fps, até 1280 pixels no lado maior.
- Sem áudio, anúncios, conta ou envio de vídeos à internet.
- A autorização de captura é solicitada a cada sessão.
- A rotação é acomodada na área inicial do vídeo; não muda a resolução durante a sessão.
- Conteúdos protegidos podem aparecer pretos, conforme as regras do Android.
- Gravações muito curtas ou interrompidas pelo encerramento forçado do processo podem não ser salvas.

Implementação baseada na documentação oficial: https://developer.android.com/media/grow/media-projection

## Estado da validação

APK de debug compilado com sucesso e assinatura verificada com `apksigner`. Ainda precisa de teste da gravação em aparelho Android. Os scripts `build-local.cmd` e `verify-apk.cmd` usam os caminhos das ferramentas desta máquina.
