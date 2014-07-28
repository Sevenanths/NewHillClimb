.class Lcom/adsdk/sdk/video/TrackerService$2;
.super Ljava/lang/Object;
.source "TrackerService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/TrackerService;->startTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->access$7(Z)V

    .line 202
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->access$8(Ljava/lang/Thread;)V

    .line 203
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->startTracking()V

    .line 204
    return-void
.end method
