.class Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;
.super Ljava/lang/Object;
.source "CrossPromotionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;
    }
.end annotation


# instance fields
.field mAppname:Ljava/lang/String;

.field mDesc:Ljava/lang/String;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIconURL:Ljava/lang/String;

.field mPackageId:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;


# direct methods
.method constructor <init>(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->mTitle:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->mAppname:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->mDesc:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->mIconURL:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method static synthetic access$0(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;)Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    return-object v0
.end method


# virtual methods
.method show()Z
    .locals 17

    .prologue
    .line 140
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "ignored_appreleases"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, "ignore"

    const-string v16, ""

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mIgnoreList:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    invoke-virtual {v13}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->getCrossPromotion()Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    move-result-object v7

    .line 142
    .local v7, c:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    if-nez v7, :cond_0

    const/4 v13, 0x0

    .line 231
    .end local v7           #c:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    :goto_0
    return v13

    .line 144
    .restart local v7       #c:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    new-instance v14, Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v15, v15, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v15}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v14, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    .line 145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v13}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "layout"

    const-string v16, "apprelease"

    invoke-static/range {v13 .. v16}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getResourceIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 146
    .local v9, layoutId:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v13, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v7}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getDialogTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_app_icon"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 150
    .local v2, appIcon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_app_name"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 151
    .local v3, appName:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_app_desc"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 153
    .local v1, appDesc:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_button_yes"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 154
    .local v6, buttonYes:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_button_no"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 155
    .local v5, buttonNo:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v14, v14, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "apprelease_button_never"

    invoke-static {v14, v15}, Lcom/fingersoft/fsadsdk/advertising/utils/ResourceUtils;->getIdAssignedByR(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 157
    .local v4, buttonNever:Landroid/widget/Button;
    new-instance v12, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;-><init>(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;Landroid/widget/ImageView;)V

    .line 158
    .local v12, task:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;
    const/4 v13, 0x1

    new-array v13, v13, [Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-virtual {v12, v13}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 160
    invoke-virtual {v7}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v7}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v10, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 164
    .local v10, manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;
    move-object v11, v7

    .line 165
    .local v11, promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    new-instance v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$1;-><init>(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)V

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    new-instance v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$2;-><init>(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$3;-><init>(Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;)V

    invoke-virtual {v4, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "apprelease/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;->getIdentifier()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/show"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;

    iget-object v13, v13, Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v13}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 230
    .end local v1           #appDesc:Landroid/widget/TextView;
    .end local v2           #appIcon:Landroid/widget/ImageView;
    .end local v3           #appName:Landroid/widget/TextView;
    .end local v4           #buttonNever:Landroid/widget/Button;
    .end local v5           #buttonNo:Landroid/widget/Button;
    .end local v6           #buttonYes:Landroid/widget/Button;
    .end local v7           #c:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    .end local v9           #layoutId:I
    .end local v10           #manager:Lcom/fingersoft/fsadsdk/advertising/AdManager;
    .end local v11           #promo:Lcom/fingersoft/fsadsdk/advertising/json/CrossPromotionCollection$CrossPromotion;
    .end local v12           #task:Lcom/fingersoft/fsadsdk/advertising/CrossPromotionDialog$AppInfo$DownloadImageTask;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error showing cross promotion: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/fingersoft/fsadsdk/advertising/utils/AdUtils;->log(Ljava/lang/String;)V

    .line 231
    const/4 v13, 0x0

    goto/16 :goto_0
.end method
