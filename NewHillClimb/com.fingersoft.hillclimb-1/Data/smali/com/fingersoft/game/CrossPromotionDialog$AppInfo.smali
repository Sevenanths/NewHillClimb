.class Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;
.super Ljava/lang/Object;
.source "CrossPromotionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingersoft/game/CrossPromotionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfo"
.end annotation


# instance fields
.field mAppname:Ljava/lang/String;

.field mDesc:Ljava/lang/String;

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIconURL:Ljava/lang/String;

.field mPackageId:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/fingersoft/game/CrossPromotionDialog;


# direct methods
.method constructor <init>(Lcom/fingersoft/game/CrossPromotionDialog;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    iput-object p1, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mTitle:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mAppname:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mDesc:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mIconURL:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method downloadIcon()Z
    .locals 4

    .prologue
    .line 87
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog;->mShowInfo:Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mIconURL:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 89
    .local v1, is:Ljava/io/InputStream;
    const-string v3, "src"

    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 90
    const/4 v3, 0x1

    .line 95
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #url:Ljava/net/URL;
    :goto_0
    return v3

    .line 92
    :catch_0
    move-exception v0

    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 95
    .end local v0           #e:Ljava/net/MalformedURLException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 93
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mAppname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mDesc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method load(Landroid/content/SharedPreferences;)Z
    .locals 6
    .parameter "pref"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 63
    const-string v3, "app_title"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mTitle:Ljava/lang/String;

    .line 64
    const-string v3, "app_name"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mAppname:Ljava/lang/String;

    .line 65
    const-string v3, "app_desc"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mDesc:Ljava/lang/String;

    .line 66
    const-string v3, "app_package_id"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->isValid()Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v3, v3, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_icon.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 73
    .local v1, is:Ljava/io/FileInputStream;
    const-string v3, "src"

    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .end local v1           #is:Ljava/io/FileInputStream;
    :goto_0
    return v2

    .line 76
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method save(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "pref"

    .prologue
    .line 103
    :try_start_0
    iget-object v4, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lcom/fingersoft/game/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 106
    .local v2, iconBitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v4, v4, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v4}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_icon.png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 107
    .local v3, out:Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 108
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 109
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 112
    .end local v2           #iconBitmap:Landroid/graphics/Bitmap;
    .end local v3           #out:Ljava/io/FileOutputStream;
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 113
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v4, "app_title"

    iget-object v5, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mTitle:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string v4, "app_name"

    iget-object v5, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mAppname:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v4, "app_desc"

    iget-object v5, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mDesc:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v4, "app_package_id"

    iget-object v5, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apprelease/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/saved"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/fingersoft/game/MainActivity;->trackPageView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method show()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->isValid()Z

    move-result v8

    if-nez v8, :cond_0

    .line 202
    :goto_0
    return v7

    .line 132
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    new-instance v9, Landroid/app/Dialog;

    iget-object v10, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v10, v10, Lcom/fingersoft/game/CrossPromotionDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v10}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    .line 133
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v8, v8, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    const v9, 0x7f030006

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(I)V

    .line 134
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v8, v8, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    iget-object v9, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v8, v8, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    const v9, 0x7f07001c

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 137
    .local v1, appIcon:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v8, v8, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    const v9, 0x7f07001d

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 138
    .local v2, appName:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v8, v8, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    const v9, 0x7f07001e

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 140
    .local v0, appDesc:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v8, v8, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    const v9, 0x7f07001f

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 141
    .local v5, buttonYes:Landroid/widget/Button;
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v8, v8, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    const v9, 0x7f070021

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 142
    .local v4, buttonNo:Landroid/widget/Button;
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v8, v8, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    const v9, 0x7f070020

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 144
    .local v3, buttonNever:Landroid/widget/Button;
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mAppname:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_1

    .line 148
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_1
    new-instance v8, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$1;

    invoke-direct {v8, p0}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$1;-><init>(Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v8, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$2;

    invoke-direct {v8, p0}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$2;-><init>(Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    new-instance v8, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;

    invoke-direct {v8, p0}, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo$3;-><init>(Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "apprelease/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->mPackageId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/show"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/fingersoft/game/MainActivity;->trackPageView(Ljava/lang/String;)V

    .line 196
    iget-object v8, p0, Lcom/fingersoft/game/CrossPromotionDialog$AppInfo;->this$0:Lcom/fingersoft/game/CrossPromotionDialog;

    iget-object v8, v8, Lcom/fingersoft/game/CrossPromotionDialog;->mAppDlg:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 200
    .end local v0           #appDesc:Landroid/widget/TextView;
    .end local v1           #appIcon:Landroid/widget/ImageView;
    .end local v2           #appName:Landroid/widget/TextView;
    .end local v3           #buttonNever:Landroid/widget/Button;
    .end local v4           #buttonNo:Landroid/widget/Button;
    .end local v5           #buttonYes:Landroid/widget/Button;
    :catch_0
    move-exception v6

    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
