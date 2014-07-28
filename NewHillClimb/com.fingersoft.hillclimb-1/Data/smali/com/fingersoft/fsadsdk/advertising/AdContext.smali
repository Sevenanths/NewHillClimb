.class public Lcom/fingersoft/fsadsdk/advertising/AdContext;
.super Ljava/lang/Object;
.source "AdContext.java"


# instance fields
.field strategy:Lcom/fingersoft/fsadsdk/advertising/interfaces/AdvertisingStrategy;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/interfaces/AdvertisingStrategy;)V
    .locals 0
    .parameter "strategy"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AdContext;->strategy:Lcom/fingersoft/fsadsdk/advertising/interfaces/AdvertisingStrategy;

    .line 12
    return-void
.end method


# virtual methods
.method public getCurrentStrategy()Lcom/fingersoft/fsadsdk/advertising/interfaces/AdvertisingStrategy;
    .locals 2

    .prologue
    .line 16
    const-string v1, "fsad-sdk"

    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdContext;->strategy:Lcom/fingersoft/fsadsdk/advertising/interfaces/AdvertisingStrategy;

    if-nez v0, :cond_0

    const-string v0, "NULL Strategy"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdContext;->strategy:Lcom/fingersoft/fsadsdk/advertising/interfaces/AdvertisingStrategy;

    return-object v0

    .line 16
    :cond_0
    const-string v0, "Not NULL Strategy"

    goto :goto_0
.end method

.method public getNext()Lcom/fingersoft/fsadsdk/advertising/interfaces/AdvertisingStrategy;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/AdContext;->strategy:Lcom/fingersoft/fsadsdk/advertising/interfaces/AdvertisingStrategy;

    return-object v0
.end method
