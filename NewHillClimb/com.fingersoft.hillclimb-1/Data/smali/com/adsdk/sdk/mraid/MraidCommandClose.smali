.class Lcom/adsdk/sdk/mraid/MraidCommandClose;
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
    .line 51
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidCommand;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    .line 52
    return-void
.end method


# virtual methods
.method execute()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidCommandClose;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidView;->getDisplayController()Lcom/adsdk/sdk/mraid/MraidDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->close()V

    .line 56
    return-void
.end method
