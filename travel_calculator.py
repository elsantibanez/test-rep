def calculate_travel_time(distance, speed):
    """
    Calculate travel time given distance and speed.

    Parameters:
    distance (float): The distance to travel in miles.
    speed (float): The travel speed in miles per hour.

    Returns:
    tuple: A tuple containing hours and minutes.
    """
    if distance < 2:
        raise ValueError("Distance must be at least 2 miles.")
    if speed <= 0:
        raise ValueError("Speed must be greater than 0.")
    
    time = distance / speed
    hours = int(time)
    minutes = int((time - hours) * 60)
    
    return hours, minutes

def get_user_input():
    """
    Get user input for distance and speed.

    Returns:
    tuple: A tuple containing distance and speed.
    """
    while True:
        try:
            distance = float(input("Enter the distance (in miles, minimum 2 miles): "))
            speed = float(input("Enter your travel speed (in miles per hour): "))
            return distance, speed
        except ValueError:
            print("Invalid input. Please enter numeric values.")

def display_travel_time(hours, minutes):
    """
    Display the calculated travel time.

    Parameters:
    hours (int): The number of hours.
    minutes (int): The number of minutes.
    """
    print(f"\nEstimated travel time:")
    print(f"Hours: {hours}")
    print(f"Minutes: {minutes}")
    print(f"Total time: {hours} hours and {minutes} minutes")

def main():
    """
    Main function to run the Travel Time Calculator.
    """
    print("Travel Time Calculator")
    print("-----------------------")
    
    try:
        distance, speed = get_user_input()
        hours, minutes = calculate_travel_time(distance, speed)
        display_travel_time(hours, minutes)
    except ValueError as e:
        print(f"Error: {e}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

if __name__ == "__main__":
    main()
