.class Lcom/adsdk/sdk/video/WebFrame$1;
.super Ljava/lang/Object;
.source "WebFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/WebFrame;-><init>(Landroid/app/Activity;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/WebFrame;

.field private final synthetic val$localContext:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/WebFrame;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebFrame$1;->this$0:Lcom/adsdk/sdk/video/WebFrame;

    iput-object p2, p0, Lcom/adsdk/sdk/video/WebFrame$1;->val$localContext:Landroid/app/Activity;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame$1;->val$localContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 136
    return-void
.end method
