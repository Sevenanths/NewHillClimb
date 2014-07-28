.class public Lcom/adsdk/sdk/video/TrackerService;
.super Ljava/lang/Object;
.source "TrackerService.java"


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static sRetryTrackEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/adsdk/sdk/video/TrackEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static sStopped:Z

.field private static sThread:Ljava/lang/Thread;

.field private static sThreadRunning:Z

.field private static sTrackEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/adsdk/sdk/video/TrackEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .locals 0
    .parameter

    .prologue
    .line 48
    sput-boolean p0, Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z

    return-void
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z

    return v0
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->hasMoreUpdates()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3()Lcom/adsdk/sdk/video/TrackEvent;
    .locals 1

    .prologue
    .line 109
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->getNextUpdate()Lcom/adsdk/sdk/video/TrackEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$5()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7(Z)V
    .locals 0
    .parameter

    .prologue
    .line 34
    sput-boolean p0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    return-void
.end method

.method static synthetic access$8(Ljava/lang/Thread;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    sput-object p0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    return-void
.end method

.method private static getNextUpdate()Lcom/adsdk/sdk/video/TrackEvent;
    .locals 3

    .prologue
    .line 110
    sget-object v2, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 111
    :try_start_0
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 112
    monitor-exit v2

    const/4 v0, 0x0

    .line 115
    .local v0, nextTrackEvent:Lcom/adsdk/sdk/video/TrackEvent;
    :goto_0
    return-object v0

    .line 114
    .end local v0           #nextTrackEvent:Lcom/adsdk/sdk/video/TrackEvent;
    :cond_0
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/video/TrackEvent;

    .line 115
    .restart local v0       #nextTrackEvent:Lcom/adsdk/sdk/video/TrackEvent;
    monitor-exit v2

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static hasMoreUpdates()Z
    .locals 4

    .prologue
    .line 98
    sget-object v2, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 99
    :try_start_0
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 100
    .local v0, hasMore:Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "More updates:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    sget-object v3, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 102
    monitor-exit v2

    return v0

    .line 99
    .end local v0           #hasMore:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    .restart local v0       #hasMore:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 212
    const-string v0, "release"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "release stopping Tracking events thread"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sStopped:Z

    .line 217
    :cond_0
    return-void
.end method

.method public static requestRetry(Lcom/adsdk/sdk/video/TrackEvent;)V
    .locals 3
    .parameter "trackEvent"

    .prologue
    .line 86
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget v0, p0, Lcom/adsdk/sdk/video/TrackEvent;->retries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adsdk/sdk/video/TrackEvent;->retries:I

    .line 89
    iget v0, p0, Lcom/adsdk/sdk/video/TrackEvent;->retries:I

    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    .line 90
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Added retry track event:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/adsdk/sdk/video/TrackerService;->sRetryTrackEvents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 86
    monitor-exit v1

    .line 95
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static requestTrack(Lcom/adsdk/sdk/video/TrackEvent;)V
    .locals 3
    .parameter "trackEvent"

    .prologue
    .line 71
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Added track event:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 71
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    if-nez v0, :cond_1

    .line 78
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->startTracking()V

    .line 80
    :cond_1
    return-void

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static requestTrack([Lcom/adsdk/sdk/video/TrackEvent;)V
    .locals 5
    .parameter "trackEvents"

    .prologue
    .line 54
    sget-object v2, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 55
    :try_start_0
    array-length v3, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Added track event:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 54
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-boolean v1, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    if-nez v1, :cond_0

    .line 63
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->startTracking()V

    .line 65
    :cond_0
    return-void

    .line 55
    :cond_1
    :try_start_1
    aget-object v0, p0, v1

    .line 56
    .local v0, trackEvent:Lcom/adsdk/sdk/video/TrackEvent;
    sget-object v4, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 57
    sget-object v4, Lcom/adsdk/sdk/video/TrackerService;->sTrackEvents:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v0           #trackEvent:Lcom/adsdk/sdk/video/TrackEvent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static startTracking()V
    .locals 3

    .prologue
    .line 126
    sget-object v1, Lcom/adsdk/sdk/video/TrackerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    sget-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsdk/sdk/video/TrackerService;->sThreadRunning:Z

    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/adsdk/sdk/video/TrackerService$1;

    invoke-direct {v2}, Lcom/adsdk/sdk/video/TrackerService$1;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    .line 197
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    new-instance v2, Lcom/adsdk/sdk/video/TrackerService$2;

    invoke-direct {v2}, Lcom/adsdk/sdk/video/TrackerService$2;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 206
    sget-object v0, Lcom/adsdk/sdk/video/TrackerService;->sThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 126
    :cond_0
    monitor-exit v1

    .line 209
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
