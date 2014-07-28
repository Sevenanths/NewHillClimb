.class public Lcom/fingersoft/fsadsdk/advertising/analytics/EmptyAnalyticsProvider;
.super Ljava/lang/Object;
.source "EmptyAnalyticsProvider.java"

# interfaces
.implements Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;


# static fields
.field private static final INSTANCE:Lcom/fingersoft/fsadsdk/advertising/analytics/EmptyAnalyticsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/fingersoft/fsadsdk/advertising/analytics/EmptyAnalyticsProvider;

    invoke-direct {v0}, Lcom/fingersoft/fsadsdk/advertising/analytics/EmptyAnalyticsProvider;-><init>()V

    sput-object v0, Lcom/fingersoft/fsadsdk/advertising/analytics/EmptyAnalyticsProvider;->INSTANCE:Lcom/fingersoft/fsadsdk/advertising/analytics/EmptyAnalyticsProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/fingersoft/fsadsdk/advertising/analytics/IAnalyticsProvider;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/fingersoft/fsadsdk/advertising/analytics/EmptyAnalyticsProvider;->INSTANCE:Lcom/fingersoft/fsadsdk/advertising/analytics/EmptyAnalyticsProvider;

    return-object v0
.end method


# virtual methods
.method public startTracking(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "analyticsId"
    .parameter "context"

    .prologue
    .line 17
    return-void
.end method

.method public stopTracking()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public trackPageView(Ljava/lang/String;)V
    .locals 0
    .parameter "page"

    .prologue
    .line 25
    return-void
.end method
