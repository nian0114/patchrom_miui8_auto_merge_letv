.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"

.field private static hasSetCollator:Z

.field private static mCurrentSelectedLocale:Ljava/util/Locale;

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/LocalePicker;->hasSetCollator:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/text/Collator;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/app/LocalePicker;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$002(Ljava/text/Collator;)Ljava/text/Collator;
    .locals 0
    .param p0, "x0"    # Ljava/text/Collator;

    .prologue
    sput-object p0, Lcom/android/internal/app/LocalePicker;->sCollator:Ljava/text/Collator;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/Locale;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/app/LocalePicker;->mCurrentSelectedLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const v0, 0x10900fb

    const v1, 0x102020c

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    .local v8, "isInDeveloperMode":Z
    :cond_0
    invoke-static {p0, v8}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    .local v4, "localeInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/internal/app/LocalePicker$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V

    return-object v0
.end method

.method public static getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    sget-boolean v13, Lcom/android/internal/app/LocalePicker;->hasSetCollator:Z

    if-nez v13, :cond_0

    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/internal/app/LocalePicker;->hasSetCollator:Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "settings.locales_order_by_china"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    sget-object v13, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v13}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v13

    sput-object v13, Lcom/android/internal/app/LocalePicker;->sCollator:Ljava/text/Collator;

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .local v9, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v7

    .local v7, "locales":[Ljava/lang/String;
    invoke-static {v7, v9}, Lcom/android/internal/app/LocalePicker;->getLocaleArray([Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;

    move-result-object v6

    .local v6, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    const-string v13, "ar-XB"

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v13, "en-XA"

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const v13, 0x1070008

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .local v11, "specialLocaleCodes":[Ljava/lang/String;
    const v13, 0x1070009

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .local v12, "specialLocaleNames":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    .local v5, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "locale":Ljava/lang/String;
    const/16 v13, 0x5f

    const/16 v14, 0x2d

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .local v2, "l":Ljava/util/Locale;
    if-eqz v2, :cond_2

    const-string v13, "und"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v13, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "l":Ljava/util/Locale;
    .end local v4    # "locale":Ljava/lang/String;
    .end local v5    # "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    .end local v6    # "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "locales":[Ljava/lang/String;
    .end local v9    # "resources":Landroid/content/res/Resources;
    .end local v11    # "specialLocaleCodes":[Ljava/lang/String;
    .end local v12    # "specialLocaleNames":[Ljava/lang/String;
    :cond_3
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v13}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v13

    sput-object v13, Lcom/android/internal/app/LocalePicker;->sCollator:Ljava/text/Collator;

    goto/16 :goto_0

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "l":Ljava/util/Locale;
    .restart local v4    # "locale":Ljava/lang/String;
    .restart local v5    # "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    .restart local v6    # "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "locales":[Ljava/lang/String;
    .restart local v9    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "specialLocaleCodes":[Ljava/lang/String;
    .restart local v12    # "specialLocaleNames":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .local v8, "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v13, v8, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    iget-object v13, v8, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    const-string v14, "zz"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    iget-object v13, v8, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-static {v13, v11, v12}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    new-instance v13, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-static {v2, v11, v12}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "displayName":Ljava/lang/String;
    new-instance v13, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-direct {v13, v0, v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v0    # "displayName":Ljava/lang/String;
    .end local v2    # "l":Ljava/util/Locale;
    .end local v4    # "locale":Ljava/lang/String;
    .end local v8    # "previous":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_6
    const v13, 0x11200c1

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .local v10, "shallShowCountry":Z
    if-eqz v10, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .local v4, "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v2, v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .restart local v2    # "l":Ljava/util/Locale;
    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "languageName":Ljava/lang/String;
    invoke-static {v2, v11, v12}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayName":Ljava/lang/String;
    iget-object v13, v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string v13, "%s (%s)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    iput-object v0, v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    goto :goto_2

    .end local v0    # "displayName":Ljava/lang/String;
    .end local v2    # "l":Ljava/util/Locale;
    .end local v3    # "languageName":Ljava/lang/String;
    .end local v4    # "locale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_9
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v5
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p2, v1

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getLocaleArray([Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "locales"    # [Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v3, 0x104005c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "localeCodes":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "localeCodesArray":[Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v3, "tl-"

    const-string v4, "fil-"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    array-length v3, v1

    if-nez v3, :cond_2

    :cond_1
    move-object v1, p0

    .end local v1    # "localeCodesArray":[Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v2, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v2
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    iput-object v0, p0, Lcom/android/internal/app/LocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/internal/app/LocalePicker;->mCurrentSelectedLocale:Ljava/util/Locale;

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .local v0, "locale":Ljava/util/Locale;
    sput-object v0, Lcom/android/internal/app/LocalePicker;->mCurrentSelectedLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    return-void
.end method
