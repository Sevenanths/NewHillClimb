.class public Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;
.super Ljava/lang/Object;
.source "FlurryAnalyticsProvider.java"

# interfaces
.implements Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;


# static fields
.field private static final INSTANCE:Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;


# instance fields
.field private context:Landroid/content/Context;

.field private isTracking:Z

.field private trackingStrategy:Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;

    new-instance v1, Lcom/fingersoft/fsadsdk/advertising/analytics/NativeTrackingStrategy;

    invoke-direct {v1}, Lcom/fingersoft/fsadsdk/advertising/analytics/NativeTrackingStrategy;-><init>()V

    invoke-direct {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;-><init>(Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;)V

    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;->INSTANCE:Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;

    return-void
.end method

.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;)V
    .locals 1
    .parameter "strategy"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "Flurry provider created"

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;->trackingStrategy:Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;->INSTANCE:Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;

    return-object v0
.end method


# virtual methods
.method public startTracking(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .parameter "analyticsId"
    .parameter "context"

    .prologue
    .line 25
    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;->context:Landroid/content/Context;

    .line 28
    :try_start_0
    const-string v1, "Starting Flurry tracking..."

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    .line 30
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setLogEvents(Z)V

    .line 31
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->setLogLevel(I)V

    .line 32
    invoke-static {p2, p1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;->isTracking:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Could not start Flurry session"

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;->isTracking:Z

    .line 41
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 42
    const-string v0, "Stopped Flurry tracking..."

    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public trackPageView(Ljava/lang/String;)V
    .locals 3
    .parameter "page"

    .prologue
    .line 49
    :try_start_0
    iget-boolean v1, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;->isTracking:Z

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tracking page: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;->trackingStrategy:Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;

    invoke-interface {v1, p1}, Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;->track(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Flurry: could not track page: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
