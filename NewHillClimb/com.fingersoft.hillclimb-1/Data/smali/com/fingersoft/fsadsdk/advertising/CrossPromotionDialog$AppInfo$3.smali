.class Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;
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
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apprelease/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/never"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v1

    iget-object v2, v1, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v1}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ignored_appreleases"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ignore"

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v2

    iget-object v2, v2, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :goto_1
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 224
    return-void

    .line 217
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v1}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v1

    iget-object v2, v1, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v1

    goto :goto_1
.end method
