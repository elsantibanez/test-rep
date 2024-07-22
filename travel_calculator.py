def calculate_travel_time(distance, speed):
    if distance < 2:
        raise ValueError("Distance must be at least 2 miles.")
    if speed <= 0:
        raise ValueError("Speed must be greater than 0.")
    
    time = distance / speed
    hours = int(time)
    minutes = int((time - hours) * 60)
    
    return hours, minutes

def main():
    print("Travel Time Calculator")
    print("-----------------------")
    
    try:
        distance = float(input("Enter the distance (in miles, minimum 2 miles): "))
        speed = float(input("Enter your travel speed (in miles per hour): "))
        
        hours, minutes = calculate_travel_time(distance, speed)
        
        print(f"\nEstimated travel time:")
        print(f"Hours: {hours}")
        print(f"Minutes: {minutes}")
        print(f"Total time: {hours} hours and {minutes} minutes")
    
    except ValueError as e:
        print(f"Error: {e}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

if __name__ == "__main__":
    main()
