.class Lcom/adsdk/sdk/video/NavIcon$1$1;
.super Ljava/lang/Object;
.source "NavIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/NavIcon$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/video/NavIcon$1;

.field private final synthetic val$image:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/NavIcon$1;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsdk/sdk/video/NavIcon$1$1;->this$1:Lcom/adsdk/sdk/video/NavIcon$1;

    iput-object p2, p0, Lcom/adsdk/sdk/video/NavIcon$1$1;->val$image:Landroid/graphics/drawable/Drawable;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon$1$1;->this$1:Lcom/adsdk/sdk/video/NavIcon$1;

    #getter for: Lcom/adsdk/sdk/video/NavIcon$1;->this$0:Lcom/adsdk/sdk/video/NavIcon;
    invoke-static {v0}, Lcom/adsdk/sdk/video/NavIcon$1;->access$0(Lcom/adsdk/sdk/video/NavIcon$1;)Lcom/adsdk/sdk/video/NavIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon$1$1;->val$image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/NavIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon$1$1;->this$1:Lcom/adsdk/sdk/video/NavIcon$1;

    #getter for: Lcom/adsdk/sdk/video/NavIcon$1;->this$0:Lcom/adsdk/sdk/video/NavIcon;
    invoke-static {v0}, Lcom/adsdk/sdk/video/NavIcon$1;->access$0(Lcom/adsdk/sdk/video/NavIcon$1;)Lcom/adsdk/sdk/video/NavIcon;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/NavIcon;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon$1$1;->this$1:Lcom/adsdk/sdk/video/NavIcon$1;

    #getter for: Lcom/adsdk/sdk/video/NavIcon$1;->this$0:Lcom/adsdk/sdk/video/NavIcon;
    invoke-static {v0}, Lcom/adsdk/sdk/video/NavIcon$1;->access$0(Lcom/adsdk/sdk/video/NavIcon$1;)Lcom/adsdk/sdk/video/NavIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/NavIcon;->requestLayout()V

    .line 87
    return-void
.end method
