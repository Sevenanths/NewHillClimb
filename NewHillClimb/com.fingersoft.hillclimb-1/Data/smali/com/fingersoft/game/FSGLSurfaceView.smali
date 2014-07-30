.class public Lcom/fingersoft/game/FSGLSurfaceView;
.super Landroid/view/SurfaceView;
.source "FSGLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/game/FSGLSurfaceView$1;,
        Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;,
        Lcom/fingersoft/game/FSGLSurfaceView$LogWriter;,
        Lcom/fingersoft/game/FSGLSurfaceView$GLThread;,
        Lcom/fingersoft/game/FSGLSurfaceView$EglHelper;,
        Lcom/fingersoft/game/FSGLSurfaceView$SimpleEGLConfigChooser;,
        Lcom/fingersoft/game/FSGLSurfaceView$ComponentSizeChooser;,
        Lcom/fingersoft/game/FSGLSurfaceView$BaseConfigChooser;,
        Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;,
        Lcom/fingersoft/game/FSGLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;,
        Lcom/fingersoft/game/FSGLSurfaceView$DefaultContextFactory;,
        Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;,
        Lcom/fingersoft/game/FSGLSurfaceView$Renderer;,
        Lcom/fingersoft/game/FSGLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static mGLESVersion:I

.field private static final sGLThreadManager:Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/fingersoft/game/FSGLSurfaceView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/fingersoft/game/FSGLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
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
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x0

    sput v0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLESVersion:I

    .line 1931
    new-instance v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;-><init>(Lcom/fingersoft/game/FSGLSurfaceView$1;)V

    sput-object v0, Lcom/fingersoft/game/FSGLSurfaceView;->sGLThreadManager:Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1933
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 215
    invoke-direct {p0, p1}, Lcom/fingersoft/game/FSGLSurfaceView;->init(Landroid/content/Context;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1933
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 224
    invoke-direct {p0, p1}, Lcom/fingersoft/game/FSGLSurfaceView;->init(Landroid/content/Context;)V

    .line 225
    return-void
.end method

.method static synthetic access$1000(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$Renderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mRenderer:Lcom/fingersoft/game/FSGLSurfaceView$Renderer;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLESVersion:I

    return v0
.end method

.method static synthetic access$200(Lcom/fingersoft/game/FSGLSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLConfigChooser:Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLContextFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fingersoft/game/FSGLSurfaceView;)Lcom/fingersoft/game/FSGLSurfaceView$GLWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLWrapper:Lcom/fingersoft/game/FSGLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/fingersoft/game/FSGLSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/fingersoft/game/FSGLSurfaceView;->sGLThreadManager:Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fingersoft/game/FSGLSurfaceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1811
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1814
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/fingersoft/game/FSGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 244
    .local v1, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 253
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 254
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v2

    .line 255
    .local v2, info:Landroid/content/pm/ConfigurationInfo;
    iget v3, v2, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    sput v3, Lcom/fingersoft/game/FSGLSurfaceView;->mGLESVersion:I

    .line 256
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 238
    return-void

    .line 236
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 585
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 589
    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mRenderer:Lcom/fingersoft/game/FSGLSurfaceView$Renderer;

    if-eqz v1, :cond_2

    .line 590
    const/4 v0, 0x1

    .line 591
    .local v0, renderMode:I
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    if-eqz v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    .line 594
    :cond_0
    new-instance v1, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    iget-object v2, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    .line 595
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 596
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v1, v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->setRenderMode(I)V

    .line 598
    :cond_1
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->start()V

    .line 600
    .end local v0           #renderMode:I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mDetached:Z

    .line 601
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->requestExitAndWait()V

    .line 616
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mDetached:Z

    .line 617
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 618
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->onPause()V

    .line 556
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->onResume()V

    .line 567
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 577
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->requestRender()V

    .line 521
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .parameter "debugFlags"

    .prologue
    .line 285
    iput p1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mDebugFlags:I

    .line 286
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 446
    new-instance v0, Lcom/fingersoft/game/FSGLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/fingersoft/game/FSGLSurfaceView$ComponentSizeChooser;-><init>(Lcom/fingersoft/game/FSGLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/fingersoft/game/FSGLSurfaceView;->setEGLConfigChooser(Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;)V

    .line 448
    return-void
.end method

.method public setEGLConfigChooser(Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .parameter "configChooser"

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView;->checkRenderThreadState()V

    .line 410
    iput-object p1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLConfigChooser:Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;

    .line 411
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter "needDepth"

    .prologue
    .line 428
    new-instance v0, Lcom/fingersoft/game/FSGLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/fingersoft/game/FSGLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/fingersoft/game/FSGLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/fingersoft/game/FSGLSurfaceView;->setEGLConfigChooser(Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;)V

    .line 429
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView;->checkRenderThreadState()V

    .line 478
    iput p1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLContextClientVersion:I

    .line 479
    return-void
.end method

.method public setEGLContextFactory(Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView;->checkRenderThreadState()V

    .line 379
    iput-object p1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLContextFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;

    .line 380
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView;->checkRenderThreadState()V

    .line 393
    iput-object p1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;

    .line 394
    return-void
.end method

.method public setGLWrapper(Lcom/fingersoft/game/FSGLSurfaceView$GLWrapper;)V
    .locals 0
    .parameter "glWrapper"

    .prologue
    .line 272
    iput-object p1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLWrapper:Lcom/fingersoft/game/FSGLSurfaceView$GLWrapper;

    .line 273
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .parameter "preserveOnPause"

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 316
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->setRenderMode(I)V

    .line 499
    return-void
.end method

.method public setRenderer(Lcom/fingersoft/game/FSGLSurfaceView$Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 352
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView;->checkRenderThreadState()V

    .line 353
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLConfigChooser:Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lcom/fingersoft/game/FSGLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/fingersoft/game/FSGLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/fingersoft/game/FSGLSurfaceView;Z)V

    iput-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLConfigChooser:Lcom/fingersoft/game/FSGLSurfaceView$EGLConfigChooser;

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLContextFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 357
    new-instance v0, Lcom/fingersoft/game/FSGLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/fingersoft/game/FSGLSurfaceView$DefaultContextFactory;-><init>(Lcom/fingersoft/game/FSGLSurfaceView;Lcom/fingersoft/game/FSGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLContextFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLContextFactory;

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 360
    new-instance v0, Lcom/fingersoft/game/FSGLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/fingersoft/game/FSGLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/fingersoft/game/FSGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fingersoft/game/FSGLSurfaceView$EGLWindowSurfaceFactory;

    .line 362
    :cond_2
    iput-object p1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mRenderer:Lcom/fingersoft/game/FSGLSurfaceView$Renderer;

    .line 363
    new-instance v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    .line 364
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->start()V

    .line 365
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->onWindowResize(II)V

    .line 546
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->surfaceCreated()V

    .line 529
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView;->mGLThread:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 538
    return-void
.end method
