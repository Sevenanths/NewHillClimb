.class public Lcom/fingersoft/fsadsdk/advertising/analytics/AnalyticsProviderFactory;
.super Ljava/lang/Object;
.source "AnalyticsProviderFactory.java"


# static fields
.field public static final FLURRY_ANALYTICS_PROVIDER:I = 0x2

.field public static final GOOGLE_ANALYTICS_PROVIDER:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;)Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;
    .locals 1
    .parameter "provider"
    .parameter "strategy"

    .prologue
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 16
    invoke-static {}, Lcom/fingersoft/fsadsdk/advertising/analytics/GoogleAnalyticsProvider;->getInstance()Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;

    move-result-object v0

    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;

    invoke-direct {v0, p1}, Lcom/fingersoft/fsadsdk/advertising/analytics/FlurryAnalyticsProvider;-><init>(Lcom/fingersoft/fsadsdk/advertising/analytics/ITrackingStrategy;)V

    goto :goto_0

    .line 11
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
