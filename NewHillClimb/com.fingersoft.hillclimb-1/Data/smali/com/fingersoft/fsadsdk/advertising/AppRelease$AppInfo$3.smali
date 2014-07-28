.class Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;
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
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    iput-object p2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->val$manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    iput-object p3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->val$manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "apprelease/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/never"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-result-object v2

    iget-object v2, v2, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-result-object v2

    iget-object v3, v2, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    .line 234
    :goto_0
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;
    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$0(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AdManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ignored_appreleases"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 235
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ignore"

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    invoke-static {v3}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-result-object v3

    iget-object v3, v3, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    :goto_1
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-result-object v2

    iget-object v2, v2, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 240
    return-void

    .line 233
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->this$1:Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;

    #getter for: Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/AppRelease;
    invoke-static {v2}, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;->access$1(Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/AppRelease;

    move-result-object v2

    iget-object v3, v2, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRelease$AppInfo$3;->val$promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/fingersoft/fsadsdk/advertising/AppRelease;->mIgnoreList:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
