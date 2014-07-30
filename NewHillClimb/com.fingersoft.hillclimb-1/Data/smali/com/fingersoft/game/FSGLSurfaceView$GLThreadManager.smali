.class Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "FSGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/game/FSGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1817
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fingersoft/game/FSGLSurfaceView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1816
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1900
    iget-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1904
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$1200()I

    move-result v0

    const/high16 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1905
    iput-boolean v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1911
    :cond_0
    iput-boolean v2, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1913
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1881
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_1

    .line 1882
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1883
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1884
    .local v0, renderer:Ljava/lang/String;
    invoke-static {}, Lcom/fingersoft/game/FSGLSurfaceView;->access$1200()I

    move-result v3

    const/high16 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 1885
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1887
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1889
    :cond_0
    iget-boolean v3, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1895
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1897
    .end local v0           #renderer:Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .restart local v0       #renderer:Ljava/lang/String;
    :cond_2
    move v3, v2

    .line 1885
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1889
    goto :goto_1

    .line 1881
    .end local v0           #renderer:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/fingersoft/game/FSGLSurfaceView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    .line 1865
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1866
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1872
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1876
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1877
    iget-boolean v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1876
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/fingersoft/game/FSGLSurfaceView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1823
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    #setter for: Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->access$1102(Lcom/fingersoft/game/FSGLSurfaceView$GLThread;Z)Z

    .line 1824
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1825
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    .line 1827
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1828
    monitor-exit p0

    return-void

    .line 1823
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/fingersoft/game/FSGLSurfaceView$GLThread;)Z
    .locals 2
    .parameter "thread"

    .prologue
    const/4 v0, 0x1

    .line 1838
    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    if-nez v1, :cond_2

    .line 1839
    :cond_0
    iput-object p1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    .line 1840
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1854
    :cond_1
    :goto_0
    return v0

    .line 1843
    :cond_2
    invoke-direct {p0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1844
    iget-boolean v1, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1851
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    if-eqz v0, :cond_3

    .line 1852
    iget-object v0, p0, Lcom/fingersoft/game/FSGLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fingersoft/game/FSGLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fingersoft/game/FSGLSurfaceView$GLThread;->requestReleaseEglContextLocked()V

    .line 1854
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
