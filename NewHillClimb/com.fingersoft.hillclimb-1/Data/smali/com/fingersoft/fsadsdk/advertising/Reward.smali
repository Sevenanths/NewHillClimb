.class public Lcom/fingersoft/fsadsdk/advertising/Reward;
.super Ljava/lang/Object;
.source "Reward.java"


# instance fields
.field private amount:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "amount"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/fingersoft/fsadsdk/advertising/Reward;->amount:I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/Reward;->packageName:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/Reward;->packageName:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/fingersoft/fsadsdk/advertising/Reward;->amount:I

    .line 11
    return-void
.end method


# virtual methods
.method public Amount()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/Reward;->amount:I

    return v0
.end method

.method public PackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/Reward;->packageName:Ljava/lang/String;

    return-object v0
.end method
