import sys
import flood
import eternals
import ddos
import col1

def main():
    if len(sys.argv) < 2:
        print("Usage: sax <command> [options]")
        sys.exit(1)
    
    command = sys.argv[1]
    
    if command == 'flood':
        flood.execute()
    elif command == 'eternals':
        eternals.execute()
    elif command == 'ddos':
        ddos.execute()
    elif command == 'col1':
        col1.execute()
    else:
        print("Unknown command:", command)
        sys.exit(1)

if __name__ == "__main__":
    main()
