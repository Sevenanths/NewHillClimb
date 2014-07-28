.class public Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;
.super Ljava/lang/Object;
.source "AppRatingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field mActivity:Landroid/app/Activity;

.field mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

.field mAppName:Ljava/lang/String;

.field mMarketVariation:I

.field mPackageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fingersoft/fsadsdk/advertising/AdManager;I)V
    .locals 4
    .parameter "adManager"
    .parameter "marketVariation"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mMarketVariation:I

    .line 16
    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mAppName:Ljava/lang/String;

    .line 17
    iput-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mPackageId:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    .line 22
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    invoke-virtual {v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mActivity:Landroid/app/Activity;

    .line 23
    iput p2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mMarketVariation:I

    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 28
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 29
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mAppName:Ljava/lang/String;

    .line 30
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mPackageId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getRatingUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mMarketVariation:I

    packed-switch v0, :pswitch_data_0

    .line 46
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mPackageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    .line 39
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mPackageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 40
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "amzn://apps/android?p="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mPackageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "amzn://apps/android?p="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mPackageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 42
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "samsungapps://ProductDetail/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mPackageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 73
    packed-switch p2, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v2, "rateApp/yes"

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->getRatingUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    .local v0, myIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "APP_RATED"

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 82
    .end local v0           #myIntent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v2, "rateApp/no"

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v2, "rateApp/never"

    invoke-virtual {v1, v2}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "APP_RATED"

    invoke-static {v1, v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->setPrefValueInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public showDialog()V
    .locals 4

    .prologue
    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mAdManager:Lcom/fingersoft/fsadsdk/advertising/AdManager;

    const-string v3, "askRating"

    invoke-virtual {v2, v3}, Lcom/fingersoft/fsadsdk/advertising/AdManager;->trackPageView(Ljava/lang/String;)V

    .line 54
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 55
    .local v1, fullversionAlert:Landroid/app/AlertDialog;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Would you like to rate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fingersoft/fsadsdk/advertising/AppRatingDialog;->mAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and possibly give some feedback?\n\nBy giving us constructive feedback you help us create the best possible experience for our users."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    const/4 v2, -0x1

    const-string v3, "Yes"

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 58
    const/4 v2, -0x3

    const-string v3, "No"

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 59
    const/4 v2, -0x2

    const-string v3, "Never"

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 60
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1           #fullversionAlert:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
