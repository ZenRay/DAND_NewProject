#!/usr/bin/env python
# -*- coding:utf-8 -*-

import time
import pandas as pd
import numpy as np

CITY_DATA = {'chicago': 'chicago.csv',
             'new york city': 'new_york_city.csv',
             'washington': 'washington.csv'}
cities = ["chicago", "new york city", "washington"]
months = ['january', 'february', 'march', 'april', 'may', 'june']
daies = ["monday", "tuesday", "wednesday",
         "thursday", "friday", "saturday", "sunday"]


def get_filters():
    """
    Asks user to specify a city, month, and day to analyze.

    Returns:
        (str) city - name of the city to analyze
        (str) month - name of the month to filter by, or "all" to apply no month filter
        (str) day - name of the day of week to filter by, or "all" to apply no day filter
    """
    print('Hello! Let\'s explore some US bikeshare data!')
    # TO DO: get user input for city (chicago, new york city, washington). HINT: Use a while loop to handle invalid inputs
    city = input(
        "Would you like to see data for Chicago, New York, or Washington?\n").lower()
    while True:
        if city in cities:
            break
        else:
            city = input("Invalid city, please choose again:").lower()

    # TO DO: get user input for month (all, january, february, ... , june)
    month = input(
        "Which month? January, February, March, April, May, or June?\n").lower()
    while True:
        if (month in months) or (month == "all"):
            break
        else:
            month = input("Invalid month, please choose again:").lower()

    # TO DO: get user input for day of week (all, monday, tuesday, ... sunday)
    day = input(
        "Which day? Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday?\n").lower()
    while True:
        if (day in daies) or (day == "all"):
            break
        else:
            day = input("Invalid day, please choose again:").lower()

    print('-' * 40)
    return city, month, day


def load_data(city, month, day):
    """
    Loads data for the specified city and filters by month and day if applicable.

    Args:
        (str) city - name of the city to analyze
        (str) month - name of the month to filter by, or "all" to apply no month filter
        (str) day - name of the day of week to filter by, or "all" to apply no day filter
    Returns:
        df - Pandas DataFrame containing city data filtered by month and day
    """

    df = pd.read_csv(CITY_DATA[city])   # load the data
    df["Start Time"] = pd.to_datetime(
        df["Start Time"])  # convert the data type
    df["End Time"] = pd.to_datetime(df["End Time"])

    df["month"] = df["Start Time"].dt.month
    df["day_of_week"] = df["Start Time"].dt.weekday_name

    if month != "all":
        month = months.index(month) + 1
        df = df[df["month"] == month]

    if day != "all":
        df = df[df["day_of_week"] == day.title()]

    return df


def time_stats(df):
    """Displays statistics on the most frequent times of travel."""

    print('\nCalculating The Most Frequent Times of Travel...\n')
    start_time = time.time()

    # TO DO: display the most common month
    most_month = df["month"].mode()[0]

    print("The most popular month is %s" % months[most_month - 1])
    # TO DO: display the most common day of week
    most_day = df["day_of_week"].mode()[0]

    print("The most popular is %s" % most_day)
    # TO DO: display the most common start hour
    hours = df["Start Time"].dt.hour
    most_hour = hours.mode()[0]

    print("The most popular hour is %i" % most_hour)
    print("\nThis took %s seconds." % (time.time() - start_time))
    print('-' * 40)


def station_stats(df):
    """Displays statistics on the most popular stations and trip."""

    print('\nCalculating The Most Popular Stations and Trip...\n')
    start_time = time.time()

    # TO DO: display most commonly used start station
    print("The most popular start station is %s" %
          df["Start Station"].mode()[0])

    # TO DO: display most commonly used end station
    print("The most popular en station is %s" % df["End Station"].mode()[0])

    # TO DO: display most frequent combination of start station and end station trip
    stations = df["Start Station"] + \
        np.repeat("-", len(df)) + df["End Station"]
    most_stations = stations.mode()[0]

    print("The most popular stations is between %s and %s" %
          tuple(most_stations.split("-")))

    print("\nThis took %s seconds." % (time.time() - start_time))
    print('-' * 40)


def trip_duration_stats(df):
    """Displays statistics on the total and average trip duration."""

    print('\nCalculating Trip Duration...\n')
    start_time = time.time()

    # TO DO: display total travel time
    print("The total travel time is %.1f" % df["Trip Duration"].sum())

    # TO DO: display mean travel time
    print("The mean travel time is %.1f" % df["Trip Duration"].mean())

    print("\nThis took %s seconds." % (time.time() - start_time))
    print('-' * 40)


def user_stats(df):
    """Displays statistics on bikeshare users."""

    print('\nCalculating User Stats...\n')
    start_time = time.time()

    # TO DO: Display counts of user types
    print("The number of user types:")
    users_count = df["User Type"].value_counts()
    for user, count in zip(users_count.index, users_count.get_values()):
        print("The number of the %s is %i" % (user, count))

    # TO DO: Display counts of gender
    try:
        print("The number of gengers:")
        genders_count = df["Gender"].value_counts()

        for gender, count in zip(genders_count.index, genders_count.get_values()):
            print("The number of the %s is %i" % (gender, count))
    except:
        print("There is no gender information!")

    # TO DO: Display earliest, most recent, and most common year of birth
    try:
        print("The number of most common year of birth:")
        years_count = df["Birth Year"].dt.year.value_counts()

        for year, count in zip(years_count.index, years_count.get_values()):
            print("The number of the %s is %i" % (year, count))
    except:
        print("There is no year information!")

    print("\nThis took %s seconds." % (time.time() - start_time))
    print('-' * 40)


def main():
    while True:
        city, month, day = get_filters()
        df = load_data(city, month, day)

        time_stats(df)
        station_stats(df)
        trip_duration_stats(df)
        user_stats(df)

        restart = input('\nWould you like to restart? Enter yes or no.\n')
        if restart.lower() != 'yes':
            break


if __name__ == "__main__":
    main()
