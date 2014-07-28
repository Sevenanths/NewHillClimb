.class Lcom/adsdk/sdk/mraid/MraidAbstractController;
.super Ljava/lang/Object;
.source "MraidAbstractController.java"


# instance fields
.field private final mView:Lcom/adsdk/sdk/mraid/MraidView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidAbstractController;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    .line 10
    return-void
.end method


# virtual methods
.method public getView()Lcom/adsdk/sdk/mraid/MraidView;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidAbstractController;->mView:Lcom/adsdk/sdk/mraid/MraidView;

    return-object v0
.end method
