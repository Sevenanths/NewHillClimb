.class Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "FSGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/game/FSGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fingersoft/game/FSGLSurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fingersoft/game/FSGLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 991
    .local p1, glSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/fingersoft/game/FSGLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    iput-object p1, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 993
    return-void
.end method

.method private destroySurfaceImp()V
    .locals 6

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 1160
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1163
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/game/FSGLSurfaceView;

    .line 1164
    .local v0, view:Lcom/fingersoft/game/FSGLSurfaceView;
    if-eqz v0, :cond_0

    .line 1165
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/fingersoft/game/FSGLSurfaceView;->access$500(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1167
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1169
    .end local v0           #view:Lcom/fingersoft/game/FSGLSurfaceView;
    :cond_1
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "function"
    .parameter "error"

    .prologue
    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "tag"
    .parameter "function"
    .parameter "error"

    .prologue
    .line 1202
    invoke-static {p1, p2}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1190
    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 2
    .parameter "function"
    .parameter "error"

    .prologue
    .line 1193
    invoke-static {p0, p1}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1198
    .local v0, message:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .prologue
    .line 1118
    iget-object v4, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1119
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fingersoft/game/FSGLSurfaceView;

    .line 1120
    .local v3, view:Lcom/fingersoft/game/FSGLSurfaceView;
    if-eqz v3, :cond_3

    .line 1121
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mGLWrapper:Lcom/fingersoft/game/FSGLSurfaceView$GLWrapper;
    invoke-static {v3}, Lcom/fingersoft/game/FSGLSurfaceView;->access$600(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$GLWrapper;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1122
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mGLWrapper:Lcom/fingersoft/game/FSGLSurfaceView$GLWrapper;
    invoke-static {v3}, Lcom/fingersoft/game/FSGLSurfaceView;->access$600(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/fingersoft/game/FSGLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1125
    :cond_0
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/fingersoft/game/FSGLSurfaceView;->access$700(Lcom/fingersoft/game/FSGLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_3

    .line 1126
    const/4 v0, 0x0

    .line 1127
    .local v0, configFlags:I
    const/4 v2, 0x0

    .line 1128
    .local v2, log:Ljava/io/Writer;
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/fingersoft/game/FSGLSurfaceView;->access$700(Lcom/fingersoft/game/FSGLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1129
    or-int/lit8 v0, v0, 0x1

    .line 1131
    :cond_1
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mDebugFlags:I
    invoke-static {v3}, Lcom/fingersoft/game/FSGLSurfaceView;->access$700(Lcom/fingersoft/game/FSGLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 1132
    new-instance v2, Lcom/fingersoft/game/FSGLSurfaceView$LogWriter;

    .end local v2           #log:Ljava/io/Writer;
    invoke-direct {v2}, Lcom/fingersoft/game/FSGLSurfaceView$LogWriter;-><init>()V

    .line 1134
    .restart local v2       #log:Ljava/io/Writer;
    :cond_2
    invoke-static {v1, v0, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1137
    .end local v0           #configFlags:I
    .end local v2           #log:Ljava/io/Writer;
    :cond_3
    return-object v1
.end method

.method public createSurface()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1061
    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v3, :cond_0

    .line 1062
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "egl not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1064
    :cond_0
    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v3, :cond_1

    .line 1065
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglDisplay not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1067
    :cond_1
    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v3, :cond_2

    .line 1068
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mEglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1075
    :cond_2
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1080
    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fingersoft/game/FSGLSurfaceView;

    .line 1081
    .local v1, view:Lcom/fingersoft/game/FSGLSurfaceView;
    if-eqz v1, :cond_5

    .line 1082
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v1}, Lcom/fingersoft/game/FSGLSurfaceView;->access$500(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v1}, Lcom/fingersoft/game/FSGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1088
    :goto_0
    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_6

    .line 1089
    :cond_3
    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1090
    .local v0, error:I
    const/16 v3, 0x300b

    if-ne v0, v3, :cond_4

    .line 1091
    const-string v3, "EglHelper"

    const-string v4, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .end local v0           #error:I
    :cond_4
    :goto_1
    return v2

    .line 1085
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 1100
    :cond_6
    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1105
    const-string v3, "EGLHelper"

    const-string v4, "eglMakeCurrent"

    iget-object v5, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 1109
    :cond_7
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public destroySurface()V
    .locals 0

    .prologue
    .line 1155
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1156
    return-void
.end method

.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1175
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    .line 1176
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fingersoft/game/FSGLSurfaceView;

    .line 1177
    .local v0, view:Lcom/fingersoft/game/FSGLSurfaceView;
    if-eqz v0, :cond_0

    .line 1178
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mEGLContextFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Lcom/fingersoft/game/FSGLSurfaceView;->access$400(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4}, Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1180
    :cond_0
    iput-object v5, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1182
    .end local v0           #view:Lcom/fingersoft/game/FSGLSurfaceView;
    :cond_1
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    .line 1183
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1184
    iput-object v5, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1186
    :cond_2
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1006
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1011
    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1013
    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 1014
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1020
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1021
    .local v0, version:[I
    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1022
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1024
    :cond_1
    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fingersoft/game/FSGLSurfaceView;

    .line 1025
    .local v1, view:Lcom/fingersoft/game/FSGLSurfaceView;
    if-nez v1, :cond_4

    .line 1026
    iput-object v6, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1027
    iput-object v6, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1037
    :goto_0
    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 1038
    :cond_2
    iput-object v6, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1039
    const-string v2, "createContext"

    invoke-direct {p0, v2}, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1045
    :cond_3
    iput-object v6, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1046
    return-void

    .line 1029
    :cond_4
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mEGLConfigChooser:Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;
    invoke-static {v1}, Lcom/fingersoft/game/FSGLSurfaceView;->access$300(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1035
    #getter for: Lcom/fingersoft/game/FSGLSurfaceView;->mEGLContextFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;
    invoke-static {v1}, Lcom/fingersoft/game/FSGLSurfaceView;->access$400(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v5}, Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0
.end method

.method public swap()I
    .locals 3

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1148
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3000

    goto :goto_0
.end method
