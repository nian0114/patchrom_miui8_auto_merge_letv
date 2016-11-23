.class public Landroid/countryregion/LeUICountryAreaRegionPicker;
.super Landroid/app/ListFragment;
.source "LeUICountryAreaRegionPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionSelectionListener;,
        Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LeUICountryAreaRegionPicker"

.field private static hasSetCollator:Z

.field private static mCountryAreaRegionLables:[Ljava/lang/String;

.field private static mCountryAreaRegionMccs:[Ljava/lang/String;

.field private static mCurrLocale:Ljava/util/Locale;

.field private static mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

.field private static mLocaleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mOhtersMcc:I

.field private static mOthersLable:I

.field private static mStoredMcc:Ljava/lang/String;

.field private static mStoredMccPos:I

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private final SELECT_STAR_STATE_ACTION_KEY:Ljava/lang/String;

.field private final SELECT_STAR_STATE_KEY:Ljava/lang/String;

.field private final SELECT_STAR_STATE_NAME_KEY:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionSelectionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->hasSetCollator:Z

    .line 52
    sput-object v1, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCountryAreaRegionLables:[Ljava/lang/String;

    .line 53
    sput-object v1, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCountryAreaRegionMccs:[Ljava/lang/String;

    .line 54
    const v0, 0x1040755

    sput v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mOthersLable:I

    .line 55
    const v0, 0x1040756

    sput v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mOhtersMcc:I

    .line 57
    const/4 v0, -0x1

    sput v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mStoredMccPos:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 47
    const-string/jumbo v0, "selected_key"

    iput-object v0, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->SELECT_STAR_STATE_KEY:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "selected_name_key"

    iput-object v0, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->SELECT_STAR_STATE_NAME_KEY:Ljava/lang/String;

    .line 49
    const-string v0, "action_mode_key"

    iput-object v0, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->SELECT_STAR_STATE_ACTION_KEY:Ljava/lang/String;

    .line 301
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mLocaleInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    return-object v0
.end method

.method static synthetic access$200()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$202(Ljava/text/Collator;)Ljava/text/Collator;
    .locals 0
    .param p0, "x0"    # Ljava/text/Collator;

    .prologue
    .line 44
    sput-object p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->sCollator:Ljava/text/Collator;

    return-object p0
.end method

.method private static checkInitResource(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 225
    .local v0, "newLocale":Ljava/util/Locale;
    const-string v2, "LeUICountryAreaRegionPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkInitResource mCurrLocale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newLocale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrLocale:Ljava/util/Locale;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCountryAreaRegionLables:[Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCountryAreaRegionMccs:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 236
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 233
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1070086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCountryAreaRegionLables:[Ljava/lang/String;

    .line 234
    const v2, 0x1070087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCountryAreaRegionMccs:[Ljava/lang/String;

    .line 235
    sput-object v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrLocale:Ljava/util/Locale;

    goto :goto_0
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
            "Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    const v0, 0x10900f3

    const v1, 0x10204be

    invoke-static {p0, v0, v1}, Landroid/countryregion/LeUICountryAreaRegionPicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 8
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
            "Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 128
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v0, Landroid/countryregion/LeUICountryAreaRegionPicker$1;

    sget-object v4, Landroid/countryregion/LeUICountryAreaRegionPicker;->mLocaleInfos:Ljava/util/List;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/countryregion/LeUICountryAreaRegionPicker$1;-><init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V

    return-object v0
.end method

.method private contructCountries([Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .param p1, "sortedList"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v3, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    const/4 v3, 0x0

    .line 122
    .end local v3    # "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-object v3

    .line 112
    .restart local v3    # "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    .line 113
    .local v2, "count":I
    const/4 v4, 0x0

    .line 114
    .local v4, "currentTitle":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v0, v6

    .line 115
    .local v5, "hashM":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "bucketName":Ljava/lang/String;
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 119
    :cond_2
    move-object v4, v1

    .line 120
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static getAllCountryAreaRegions(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    sget-boolean v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->hasSetCollator:Z

    if-nez v2, :cond_0

    .line 248
    const/4 v2, 0x1

    sput-boolean v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->hasSetCollator:Z

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "settings.locales_order_by_china"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    sput-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->sCollator:Ljava/text/Collator;

    .line 255
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/countryregion/LeUICountryAreaRegionPicker;->checkInitResource(Landroid/content/Context;)V

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCountryAreaRegionLables:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 257
    .local v1, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCountryAreaRegionLables:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 258
    new-instance v2, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    sget-object v3, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCountryAreaRegionLables:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCountryAreaRegionMccs:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "i":I
    .end local v1    # "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;>;"
    :cond_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    sput-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->sCollator:Ljava/text/Collator;

    goto :goto_0

    .line 260
    .restart local v0    # "i":I
    .restart local v1    # "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;>;"
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 261
    new-instance v2, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    sget v3, Landroid/countryregion/LeUICountryAreaRegionPicker;->mOthersLable:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Landroid/countryregion/LeUICountryAreaRegionPicker;->mOhtersMcc:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 263
    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mStoredMcc:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 270
    :cond_3
    :goto_3
    return-object v1

    .line 265
    :cond_4
    sget-object v3, Landroid/countryregion/LeUICountryAreaRegionPicker;->mStoredMcc:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    iget-object v2, v2, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 266
    sput v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mStoredMccPos:I

    goto :goto_3

    .line 262
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static getAllCountryAreaRegionsLables(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-static {p0}, Landroid/countryregion/LeUICountryAreaRegionPicker;->getAllCountryAreaRegions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 239
    .local v0, "allRegionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 240
    .local v2, "regionLables":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 241
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    invoke-virtual {v3}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return-object v2
.end method

.method public static getCountryAreaRegionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentRegionValue"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-static {p0}, Landroid/countryregion/LeUICountryAreaRegionPicker;->getAllCountryAreaRegions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 215
    .local v2, "infors":Ljava/util/List;, "Ljava/util/List<Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    .line 216
    .local v1, "info":Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    invoke-virtual {v1}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {v1}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 220
    .end local v1    # "info":Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCurrentCountryAreaRegionInfo(Landroid/content/Context;)Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "leui_country_area_region_settings"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "storedMcc":Ljava/lang/String;
    new-instance v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    invoke-static {p0, v1}, Landroid/countryregion/LeUICountryAreaRegionPicker;->getCountryAreaRegionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v0, "info":Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    return-object v0
.end method

.method public static updateCountryAreaRegion(Landroid/content/Context;Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "leui_country_area_region_settings"

    iget-object v2, p1, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    return-void
.end method


# virtual methods
.method protected getCurrentSelectedInfo()Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    return-object v0
.end method

.method protected getStoredMccPos()I
    .locals 1

    .prologue
    .line 276
    sget v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mStoredMccPos:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Landroid/countryregion/LeUICountryAreaRegionPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/countryregion/LeUICountryAreaRegionPicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 101
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;>;"
    iput-object v0, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 102
    invoke-virtual {p0, v0}, Landroid/countryregion/LeUICountryAreaRegionPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrLocale:Ljava/util/Locale;

    .line 81
    iput-object p1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mActivity:Landroid/app/Activity;

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "leui_country_area_region_settings"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mStoredMcc:Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    iget-object v1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mStoredMcc:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/countryregion/LeUICountryAreaRegionPicker;->getCountryAreaRegionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mStoredMcc:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    .line 84
    iget-object v0, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/countryregion/LeUICountryAreaRegionPicker;->getAllCountryAreaRegions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mLocaleInfos:Ljava/util/List;

    .line 85
    const-string v0, "LeUICountryAreaRegionPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConAttach.mCurrentSelectedInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    invoke-virtual {v2}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    sget-object v1, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    const-string/jumbo v0, "selected_name_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    .line 93
    sget-object v1, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    const-string/jumbo v0, "selected_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    .line 95
    :cond_0
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/countryregion/LeUICountryAreaRegionPicker;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    .line 68
    .local v0, "info":Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;
    iget-object v1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mListener:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionSelectionListener;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mListener:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionSelectionListener;

    invoke-interface {v1, v0}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionSelectionListener;->onCountryAreaRegionSelected(Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;)V

    .line 70
    iget-object v1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mListener:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionSelectionListener;

    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    invoke-interface {v1, v2, v0}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionSelectionListener;->onCountryAreaRegionChanged(Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;)V

    .line 72
    :cond_0
    sget-object v1, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    iget-object v2, v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    iput-object v2, v1, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    .line 73
    sget-object v1, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    iget-object v2, v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    iput-object v2, v1, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 75
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    const-string/jumbo v0, "selected_key"

    sget-object v1, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    invoke-virtual {v1}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 292
    const-string/jumbo v0, "selected_name_key"

    sget-object v1, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    invoke-virtual {v1}, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 293
    return-void
.end method

.method protected resetCurrentSelectdInfo()V
    .locals 3

    .prologue
    .line 279
    sget-object v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    iget-object v1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mActivity:Landroid/app/Activity;

    sget-object v2, Landroid/countryregion/LeUICountryAreaRegionPicker;->mStoredMcc:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/countryregion/LeUICountryAreaRegionPicker;->getCountryAreaRegionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mLabel:Ljava/lang/String;

    .line 280
    sget-object v0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mCurrentSelectedInfo:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;

    sget-object v1, Landroid/countryregion/LeUICountryAreaRegionPicker;->mStoredMcc:Ljava/lang/String;

    iput-object v1, v0, Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionInfo;->mCountryCode:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setCountryAreaRegionSelectionListener(Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionSelectionListener;

    .prologue
    .line 307
    iput-object p1, p0, Landroid/countryregion/LeUICountryAreaRegionPicker;->mListener:Landroid/countryregion/LeUICountryAreaRegionPicker$CountryAreaRegionSelectionListener;

    .line 308
    return-void
.end method
