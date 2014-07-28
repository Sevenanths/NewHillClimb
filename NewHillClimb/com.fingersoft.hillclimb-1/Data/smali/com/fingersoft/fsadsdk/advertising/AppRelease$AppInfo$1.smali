.class Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;
.super Ljava/lang/Object;
.source "AppRelease.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->show()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

.field private final synthetic val$manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field private final synthetic val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;Lcom/fingersoft/fsadsdk/advertising/AdManager;Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->val$manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iput-object p3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 198
    :try_start_0
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->val$manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "apprelease/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/yes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 199
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getClickUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    .local v2, myIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;
    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v3

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AdManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 201
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-result-object v3

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-result-object v3

    iget-object v4, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    .line 203
    :goto_0
    const-string v3, "fsad-sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ignore list now = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;
    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ignored_appreleases"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 205
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "ignore"

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    const-string v3, "fsad-sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "saved = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #myIntent:Landroid/content/Intent;
    :goto_1
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-result-object v3

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 211
    return-void

    .line 202
    .restart local v2       #myIntent:Landroid/content/Intent;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-result-object v3

    iget-object v4, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 209
    .end local v2           #myIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
