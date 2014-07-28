.class Lcom/adsdk/sdk/mraid/MraidCommandRegistry$2;
.super Ljava/lang/Object;
.source "MraidCommandRegistry.java"

# interfaces
.implements Lcom/adsdk/sdk/mraid/MraidCommandRegistry$MraidCommandFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/mraid/MraidCommandRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public create(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidCommand;
    .locals 1
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
            ")",
            "Lcom/adsdk/sdk/mraid/MraidCommand;"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/adsdk/sdk/mraid/MraidCommandExpand;

    invoke-direct {v0, p1, p2}, Lcom/adsdk/sdk/mraid/MraidCommandExpand;-><init>(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)V

    return-object v0
.end method
