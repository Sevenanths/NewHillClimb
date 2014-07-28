.class interface abstract Lcom/adsdk/sdk/mraid/MraidCommandRegistry$MraidCommandFactory;
.super Ljava/lang/Object;
.source "MraidCommandRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/mraid/MraidCommandRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MraidCommandFactory"
.end annotation


# virtual methods
.method public abstract create(Ljava/util/Map;Lcom/adsdk/sdk/mraid/MraidView;)Lcom/adsdk/sdk/mraid/MraidCommand;
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
.end method
