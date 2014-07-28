.class Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask$1;
.super Ljava/lang/Object;
.source "RichMediaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;->access$0(Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;)Lcom/adsdk/sdk/video/RichMediaActivity;

    move-result-object v0

    #getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$14(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    return-void
.end method
