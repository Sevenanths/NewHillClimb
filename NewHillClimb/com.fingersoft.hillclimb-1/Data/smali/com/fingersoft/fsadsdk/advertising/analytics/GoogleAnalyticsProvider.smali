.class public Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;
.super Ljava/lang/Object;
.source "GoogleAnalyticsProvider.java"

# interfaces
.implements Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;


# static fields
.field private static final INSTANCE:Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;


# instance fields
.field private isTracking:Z

.field private mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;

    invoke-direct {v0}, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;-><init>()V

    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->INSTANCE:Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 16
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->INSTANCE:Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;

    return-object v0
.end method


# virtual methods
.method public startTracking(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "analyticsId"
    .parameter "context"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->startNewSession(Ljava/lang/String;Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->isTracking:Z

    .line 23
    return-void
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stopSession()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->isTracking:Z

    .line 29
    return-void
.end method

.method public trackPageView(Ljava/lang/String;)V
    .locals 3
    .parameter "page"

    .prologue
    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->isTracking:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->mTracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatch()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method
