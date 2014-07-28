.class public abstract Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;
.super Ljava/lang/Object;
.source "AdProvider.java"


# instance fields
.field protected mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field private mLastTimeUsed:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->mLastTimeUsed:J

    .line 10
    return-void
.end method


# virtual methods
.method public adPause()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method

.method public adProviderClose()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public adProviderCreate(Z)V
    .locals 0
    .parameter "testMode"

    .prologue
    .line 13
    return-void
.end method

.method public adResume()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getTimeSinceLastUsed()J
    .locals 4

    .prologue
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->mLastTimeUsed:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public markUsage()V
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->mLastTimeUsed:J

    return-void
.end method

.method public resetUsage()V
    .locals 2

    .prologue
    .line 20
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->mLastTimeUsed:J

    return-void
.end method

.method public setAdManager(Lcom/fingersoft/fsadsdk/advertising/AdManager;)V
    .locals 0
    .parameter "admanager"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/providers/AdProvider;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    return-void
.end method
