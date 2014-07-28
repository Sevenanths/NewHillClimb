.class Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$2;
.super Ljava/lang/Object;
.source "CrossPromotionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->show()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

.field private final synthetic val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$2;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$2;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$2;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apprelease/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$2;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/no"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$2;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v0}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 205
    return-void
.end method
