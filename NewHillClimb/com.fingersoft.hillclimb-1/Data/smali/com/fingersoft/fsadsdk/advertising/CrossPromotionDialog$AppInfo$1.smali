.class Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;
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
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    .line 172
    :try_start_0
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v6, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v7}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    .line 174
    :goto_0
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "ignored_appreleases"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 175
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v5, "ignore"

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v6}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v6

    iget-object v6, v6, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    :goto_1
    :try_start_1
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "apprelease/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v7}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/yes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 184
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mLinkListener:Lcom/fingersoft/fsadsdk/advertising/LinkListener;

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getClickUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/fingersoft/fsadsdk/advertising/LinkListener;->clickAdWithLink(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 186
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getClickUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    .local v3, myIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 189
    .end local v3           #myIntent:Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, locale:Ljava/lang/String;
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getPlatformName()Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, platform:Ljava/lang/String;
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v5}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getBaseAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getGuid()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v7}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v7

    iget-object v7, v7, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v7}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getAdditionalParameters()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v2, v4, v7}, Lcom/fingersoft/fsadsdk/advertising/utils/ApiHelper;->getPromoIncrementUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/utils/HttpUtils;->callUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .end local v2           #locale:Ljava/lang/String;
    .end local v4           #platform:Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v5, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 195
    return-void

    .line 173
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->this$1:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    invoke-static {v5}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-result-object v5

    iget-object v6, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v6}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 178
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 193
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
