.class abstract Lcom/adsdk/sdk/mraid/MraidCommand;
.super Ljava/lang/Object;
.source "MraidCommand.java"


# instance fields
.field protected mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mView:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0
    .parameter
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/adsdk/sdk/mraid/MraidView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mParams:Ljava/util/Map;

    .line 11
    iput-object p2, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    .line 12
    return-void
.end method


# virtual methods
.method abstract execute()V
.end method

.method protected getBooleanFromParamsForKey(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 45
    const-string v0, "true"

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getFloatFromParamsForKey(Ljava/lang/String;)F
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 33
    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 34
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 39
    :goto_0
    return v2

    .line 37
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method protected getIntFromParamsForKey(Ljava/lang/String;)I
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, -0x1

    .line 17
    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 23
    :goto_0
    return v2

    .line 21
    :cond_0
    const/16 v3, 0xa

    :try_start_0
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method protected getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommand;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
