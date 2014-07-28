.class Lcom/adsdk/sdk/mraid/MraidCommandOpen;
.super Lcom/adsdk/sdk/mraid/MraidCommand;
.source "MraidCommand.java"


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
    .line 92
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidCommand;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    .line 93
    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    .prologue
    .line 96
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lcom/adsdk/sdk/mraid/MraidCommandOpen;->getStringFromParamsForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidCommandOpen;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v1}, Lcom/adsdk/sdk/mraid/MraidView;->getBrowserController()Lcom/adsdk/sdk/mraid/MraidBrowserController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adsdk/sdk/mraid/MraidBrowserController;->open(Ljava/lang/String;)V

    .line 98
    return-void
.end method
